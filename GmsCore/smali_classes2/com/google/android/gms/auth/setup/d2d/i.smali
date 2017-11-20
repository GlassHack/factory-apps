.class final Lcom/google/android/gms/auth/setup/d2d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/c/j/a/ad;

.field final synthetic b:Lcom/google/android/gms/auth/setup/d2d/b/d;

.field final synthetic c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/c/j/a/ad;Lcom/google/android/gms/auth/setup/d2d/b/d;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/i;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iput-object p2, p0, Lcom/google/android/gms/auth/setup/d2d/i;->a:Lcom/google/c/j/a/ad;

    iput-object p3, p0, Lcom/google/android/gms/auth/setup/d2d/i;->b:Lcom/google/android/gms/auth/setup/d2d/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/i;->a:Lcom/google/c/j/a/ad;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/i;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/i;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/i;->b:Lcom/google/android/gms/auth/setup/d2d/b/d;

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/i;->a:Lcom/google/c/j/a/ad;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/b/d;Ljava/util/concurrent/Future;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/i;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/i;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    const v2, 0x7f100077

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Ljava/lang/CharSequence;)V

    .line 298
    return-void
.end method
