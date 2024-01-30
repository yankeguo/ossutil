# ossutil

Container image for [ossutil](https://help.aliyun.com/document_detail/120075.html).

## Usage

```shell
docker run --rm -e "OSSUTIL_CONFIG=BASE64_ENCODED_OSSUTIL_CONFIG" \
        -v "$(pwd)/.output/public:/upload" \
        ghcr.io/yankeguo/ossutil:latest \
        ossutil cp -ruf /upload/ oss://my-bucket/path/to/upload/ --meta 'Cache-Control:public,max-age=600'
```

## Credits

GUO YANKE, MIT License
