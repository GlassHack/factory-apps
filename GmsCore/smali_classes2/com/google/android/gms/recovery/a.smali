.class final Lcom/google/android/gms/recovery/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/android/gms/recovery/a;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/gms/recovery/a;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Z

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/recovery/a;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    iget-object v1, p0, Lcom/google/android/gms/recovery/a;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-static {v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Z)V

    .line 296
    return-void
.end method
