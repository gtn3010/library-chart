{{- define "common.name" -}}
{{ .Chart.Name | replace "_" "-" | lower }}
{{- end -}}

{{- define "common.metadataCustom" -}}
metadata:
  name: {{ include "common.name" $ }}
  namespace: {{ .Values.env }}
{{- end -}}

{{- define "common.labelCustom" }}
app: {{ .Chart.Name | replace "_" "-" | lower }}
env: {{ .Values.env }}
{{- end }}