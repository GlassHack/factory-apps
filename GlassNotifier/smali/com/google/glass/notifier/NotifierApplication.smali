.class public Lcom/google/glass/notifier/NotifierApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "NotifierApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 11
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 14
    invoke-static {}, Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;->getInstance()Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;

    move-result-object v0

    .line 15
    .local v0, "timelineNotificationProducerProvider":Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;
    invoke-virtual {v0}, Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/google/glass/notifier/NotifierApplication$1;

    invoke-direct {v1, p0}, Lcom/google/glass/notifier/NotifierApplication$1;-><init>(Lcom/google/glass/notifier/NotifierApplication;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;->init(Lcom/google/common/base/Supplier;)V

    .line 24
    :cond_0
    return-void
.end method
