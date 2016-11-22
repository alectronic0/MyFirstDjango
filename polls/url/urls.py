from django.conf.urls import url

from polls.views import views

app_name = 'polls'

urlpatterns = [
    # ex: /polls/
    # url(r'^$', views.index, name='index'),
    url(r'^$', views.IndexView.as_view(), name='index'),
    # ex: /polls/5/
    # url(r'^(?P<question_id>[0-9]+)/$', views.detail, name='detail'),
    url(r'^question/(?P<pk>[0-9]+)/$', views.QuestionView.as_view(), name='detail'),
    # ex: /polls/5/results/
    # url(r'^(?P<question_id>[0-9]+)/results/$', views.results, name='results'),
    url(r'^results/(?P<pk>[0-9]+)/$', views.ResultsView.as_view(), name='results'),
    # ex: /polls/5/vote/
    url(r'^vote/(?P<question_id>[0-9]+)/$', views.vote, name='vote'),
]
