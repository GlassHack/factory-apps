.class Lcom/google/android/apps/lightcycle/MainMenuActivity$3;
.super Ljava/lang/Object;
.source "MainMenuActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/MainMenuActivity;->initializeLocalStorageOnFirstStart()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/MainMenuActivity;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/MainMenuActivity;Landroid/os/PowerManager$WakeLock;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$3;->this$0:Lcom/google/android/apps/lightcycle/MainMenuActivity;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$3;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 151
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/MainMenuActivity$3;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/Void;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$3;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 156
    return-void
.end method
