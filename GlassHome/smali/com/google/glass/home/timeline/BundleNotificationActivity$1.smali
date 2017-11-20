.class Lcom/google/glass/home/timeline/BundleNotificationActivity$1;
.super Ljava/lang/Object;
.source "BundleNotificationActivity.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleNotificationActivity;->onResumeInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleNotificationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleNotificationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/BundleNotificationActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity$1;->this$0:Lcom/google/glass/home/timeline/BundleNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    if-lez p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity$1;->this$0:Lcom/google/glass/home/timeline/BundleNotificationActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/BundleNotificationActivity;->stopListeningForGuardPhrase()V

    .line 62
    :cond_0
    return-void
.end method
