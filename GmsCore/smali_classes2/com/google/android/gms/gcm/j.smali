.class final Lcom/google/android/gms/gcm/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/b/a/a/e;

.field final synthetic b:Landroid/os/Messenger;

.field final synthetic c:Lcom/google/android/gms/gcm/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/g;Lcom/google/b/a/a/e;Landroid/os/Messenger;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/google/android/gms/gcm/j;->c:Lcom/google/android/gms/gcm/g;

    iput-object p2, p0, Lcom/google/android/gms/gcm/j;->a:Lcom/google/b/a/a/e;

    iput-object p3, p0, Lcom/google/android/gms/gcm/j;->b:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/gms/gcm/j;->c:Lcom/google/android/gms/gcm/g;

    iget-object v1, p0, Lcom/google/android/gms/gcm/j;->a:Lcom/google/b/a/a/e;

    iget-object v2, p0, Lcom/google/android/gms/gcm/j;->b:Landroid/os/Messenger;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Landroid/os/Messenger;Z)Z

    .line 694
    return-void
.end method
