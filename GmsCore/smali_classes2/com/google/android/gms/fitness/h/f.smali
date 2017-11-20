.class final Lcom/google/android/gms/fitness/h/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/h/e;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/h/e;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/gms/fitness/h/f;->a:Lcom/google/android/gms/fitness/h/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/google/android/gms/fitness/h/f;->b:Ljava/lang/Runnable;

    .line 171
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/f;->a:Lcom/google/android/gms/fitness/h/e;

    invoke-static {v0}, Lcom/google/android/gms/fitness/h/e;->a(Lcom/google/android/gms/fitness/h/e;)V

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/f;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/fitness/h/f;->a:Lcom/google/android/gms/fitness/h/e;

    invoke-static {v0}, Lcom/google/android/gms/fitness/h/e;->b(Lcom/google/android/gms/fitness/h/e;)V

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/h/f;->a:Lcom/google/android/gms/fitness/h/e;

    invoke-static {v1}, Lcom/google/android/gms/fitness/h/e;->b(Lcom/google/android/gms/fitness/h/e;)V

    throw v0
.end method
