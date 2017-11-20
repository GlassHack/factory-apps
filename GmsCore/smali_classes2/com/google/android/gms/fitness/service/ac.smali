.class final Lcom/google/android/gms/fitness/service/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/service/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/ab;)V
    .locals 0

    .prologue
    .line 1891
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ac;->a:Lcom/google/android/gms/fitness/service/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ac;->a:Lcom/google/android/gms/fitness/service/ab;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ab;->b:Lcom/google/android/gms/fitness/service/z;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/z;->c:Lcom/google/android/gms/fitness/service/i;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ac;->a:Lcom/google/android/gms/fitness/service/ab;

    iget-object v1, v1, Lcom/google/android/gms/fitness/service/ab;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Ljava/lang/String;)V

    .line 1895
    return-void
.end method
