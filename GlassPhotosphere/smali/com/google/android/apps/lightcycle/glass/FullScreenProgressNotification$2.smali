.class Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$2;
.super Ljava/lang/Object;
.source "FullScreenProgressNotification.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$ProgressUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;

.field final synthetic val$valueTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$2;->this$0:Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$2;->val$valueTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "progress"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$2;->this$0:Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;

    new-instance v1, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$2$1;

    invoke-direct {v1, p0, p3}, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$2$1;-><init>(Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$2;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method
