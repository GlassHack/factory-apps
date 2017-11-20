.class public abstract Lcom/google/android/gms/fitness/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/j/a/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/h/a;->a()V

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/h/a;->b()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/h/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 29
    const-string v0, "Future call failed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/h/a;->b()V

    .line 31
    return-void
.end method

.method protected abstract b()V
.end method
