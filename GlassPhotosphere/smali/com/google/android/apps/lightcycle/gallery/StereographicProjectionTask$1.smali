.class Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask$1;
.super Ljava/lang/Object;
.source "StereographicProjectionTask.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->access$000(Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask$1;->val$result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->access$100(Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method
