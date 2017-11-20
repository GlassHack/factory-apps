.class Lcom/google/android/apps/lightcycle/PanoramaViewActivity$1;
.super Ljava/lang/Object;
.source "PanoramaViewActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getImageFilename(Landroid/content/Intent;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$1;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 141
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$1;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "dogfoodUrl"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$1;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->access$000(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;Ljava/lang/String;)V

    .line 146
    return-void
.end method
