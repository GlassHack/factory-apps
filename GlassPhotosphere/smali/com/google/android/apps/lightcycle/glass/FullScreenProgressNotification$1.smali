.class Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$1;
.super Ljava/lang/Object;
.source "FullScreenProgressNotification.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;


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


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$1;->this$0:Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification$1;->this$0:Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/glass/FullScreenProgressNotification;->finish()V

    .line 40
    return-void
.end method
