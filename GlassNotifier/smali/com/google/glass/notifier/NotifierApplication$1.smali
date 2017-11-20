.class Lcom/google/glass/notifier/NotifierApplication$1;
.super Ljava/lang/Object;
.source "NotifierApplication.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/notifier/NotifierApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/notifier/TimelineNotificationProducer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/notifier/NotifierApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/notifier/NotifierApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/notifier/NotifierApplication;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/glass/notifier/NotifierApplication$1;->this$0:Lcom/google/glass/notifier/NotifierApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/notifier/TimelineNotificationProducer;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/google/glass/notifier/TimelineNotificationProducer;

    iget-object v1, p0, Lcom/google/glass/notifier/NotifierApplication$1;->this$0:Lcom/google/glass/notifier/NotifierApplication;

    invoke-direct {v0, v1}, Lcom/google/glass/notifier/TimelineNotificationProducer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/glass/notifier/NotifierApplication$1;->get()Lcom/google/glass/notifier/TimelineNotificationProducer;

    move-result-object v0

    return-object v0
.end method
