.class Lcom/google/android/gsf/update/Download$1;
.super Landroid/database/ContentObserver;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/Download;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/Download;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/gsf/update/Download$1;->this$0:Lcom/google/android/gsf/update/Download;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gsf/update/Download$1;->this$0:Lcom/google/android/gsf/update/Download;

    invoke-static {v0}, Lcom/google/android/gsf/update/Download;->access$000(Lcom/google/android/gsf/update/Download;)V

    .line 45
    return-void
.end method
