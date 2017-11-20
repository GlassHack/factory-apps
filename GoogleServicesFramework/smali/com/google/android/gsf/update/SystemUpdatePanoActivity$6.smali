.class Lcom/google/android/gsf/update/SystemUpdatePanoActivity$6;
.super Ljava/lang/Object;
.source "SystemUpdatePanoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->updateCountdownMessage(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

.field final synthetic val$endTime:J

.field final synthetic val$loop:Z


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;JZ)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$6;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    iput-wide p2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$6;->val$endTime:J

    iput-boolean p4, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$6;->val$loop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$6;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$6;->val$endTime:J

    iget-boolean v3, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$6;->val$loop:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$900(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;JZ)V

    return-void
.end method
