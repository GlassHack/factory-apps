.class Lcom/google/android/gsf/update/SystemUpdatePanoActivity$2;
.super Ljava/lang/Object;
.source "SystemUpdatePanoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$2;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$2;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$300(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;Z)V

    .line 176
    return-void
.end method
