.class Lcom/google/glass/home/timeline/SingleNotificationView$1$1;
.super Ljava/lang/Object;
.source "SingleNotificationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/SingleNotificationView$1;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/SingleNotificationView$1;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/SingleNotificationView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/home/timeline/SingleNotificationView$1;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1$1;->this$1:Lcom/google/glass/home/timeline/SingleNotificationView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1$1;->this$1:Lcom/google/glass/home/timeline/SingleNotificationView$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->val$activity:Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->listenForGuardPhrase()V

    .line 96
    return-void
.end method
