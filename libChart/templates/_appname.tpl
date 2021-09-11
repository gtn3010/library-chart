{{- define "common.name" -}}
name: {{ .Chart.Name | replace "_" "-" | lower }}
{{- end -}}

{{- define "common.metadataCustom" -}}
metadata:
  {{ include "common.name" $ }}
  namespace: {{ .Values.env }}
{{- end -}}

{{- define "common.labelCustom" }}
app: {{ .Chart.Name | replace "_" "-" | lower }}
env: {{ .Values.env }}
{{- end }}