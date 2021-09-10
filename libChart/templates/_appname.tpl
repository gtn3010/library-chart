{{- define "common.metadataCustom" -}}
metadata:
  name: {{ .Chart.Name | replace "-" "_" }}
  namespace: {{ .Values.env }}
{{- end -}}

{{- define "common.labelCustom" }}
app: {{ .Chart.Name }}
env: {{ .Values.env }}
{{- end }}

{{- define "common.generalVariable" }}
{{- $username := (split "_" .Chart.Name)._0 }}
{{- $appName := (split "_" .Chart.Name)._1 }}
{{- $appValues := index .Values $username $appName }}
{{- end }}
