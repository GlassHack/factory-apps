.class Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$1;
.super Ljava/lang/Object;
.source "GlassUploadActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
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
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$picture:Lorg/apache/http/HttpEntity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$1;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$1;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$1;->val$picture:Lorg/apache/http/HttpEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 71
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$1;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-static {}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not get authtoken."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$1;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->finish()V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$1;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$1;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$1;->val$picture:Lorg/apache/http/HttpEntity;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->access$100(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)V

    goto :goto_0
.end method
