{{/* vim: set filetype=mustache: */}}

{{- define "api.fullname" -}}
{{- printf "%s-%s" .Values.fullnameOverride .Values.api.subName -}}
{{- end -}}

{{- define "chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
