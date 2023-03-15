# Copyright 2023 The cert-manager Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ARG BASE_IMAGE

FROM $BASE_IMAGE

LABEL org.opencontainers.image.source="https://github.com/cert-manager/cert-manager"

USER 1000

COPY ctl /app/cmd/ctl/ctl
COPY cert-manager.license /licenses/LICENSE
COPY cert-manager.licenses_notice /licenses/LICENSES

ENTRYPOINT ["/app/cmd/ctl/ctl"]

# vim: syntax=dockerfile
