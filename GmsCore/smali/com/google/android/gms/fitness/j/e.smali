.class final Lcom/google/android/gms/fitness/j/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/ay;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/j/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/j/d;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/android/gms/fitness/j/e;->a:Lcom/google/android/gms/fitness/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/e;->a:Lcom/google/android/gms/fitness/j/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/j/d;->b()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
