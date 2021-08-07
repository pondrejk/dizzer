#!/bin/python3
'''
Uploading json data to Mapbox
Token must be set in environment
export MAPBOX_ACCESS_TOKEN="pk.YOUR_ACCESS_TOKEN"
'''

import argparse
import os
import time
import glob

from concurrent import futures
from mapbox import Uploader
from time import sleep

# parse arguments
parser = argparse.ArgumentParser(description='Upolad mbtiles')
parser.add_argument('indir', type=os.path.abspath, help='Input dir with JSONs')
args = parser.parse_args()
service = Uploader()
service.session.params['access_token'] == os.environ['MAPBOX_ACCESS_TOKEN']

def upload(srcfile):
    mapid = srcfile
    path = "{0}/{1}.{2}".format(args.indir, srcfile, extension)
    print("Processing {}".format(srcfile))
    with open(path, 'rb') as src:
        upload_resp = service.upload(src, mapid)

    if upload_resp.status_code == 422:
        for i in range(5):
            sleep(5)
            with open(path, 'rb') as src:
                upload_resp = service.upload(src, mapid)
            if upload_resp.status_code != 422:
                break

def upload_many(filenames):
    with futures.ProcessPoolExecutor() as executor:
        res = executor.map(upload, filenames)
    return len(list(res))

def main(upload_many):
    t0 = time.time()
    count = upload_many(filenames)
    elapsed = time.time() - t0
    msg = '{} upload(s) in {:.2f} s'
    print(msg.format(count, elapsed))


if __name__ == "__main__":
    os.chdir(args.indir)
    extension = 'mbtiles' # not needed if extension is not set
    filenames = [i.split(".")[0] for i in glob.glob('*.{}'.format(extension))]
    main(upload_many)
