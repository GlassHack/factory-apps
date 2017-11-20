.class Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$8;
.super Ljava/lang/Object;
.source "PanoramaCaptureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->displayErrorAndExit(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$8;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->finish()V

    .line 577
    return-void
.end method
