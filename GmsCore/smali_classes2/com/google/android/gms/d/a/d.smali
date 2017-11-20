.class final Lcom/google/android/gms/d/a/d;
.super Lcom/google/android/gms/d/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/d/c;

.field final synthetic b:Lcom/google/android/gms/d/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/a/b;Lcom/google/android/gms/d/c;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/gms/d/a/d;->b:Lcom/google/android/gms/d/a/b;

    iput-object p2, p0, Lcom/google/android/gms/d/a/d;->a:Lcom/google/android/gms/d/c;

    invoke-direct {p0}, Lcom/google/android/gms/d/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/google/android/gms/d/a/e;

    iget-object v1, p0, Lcom/google/android/gms/d/a/d;->a:Lcom/google/android/gms/d/c;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/d/a/e;-><init>(Lcom/google/android/gms/d/a/d;Lcom/google/android/gms/d/c;[B)V

    .line 127
    iget-object v1, p0, Lcom/google/android/gms/d/a/d;->b:Lcom/google/android/gms/d/a/b;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/d/a/b;->a(Lcom/google/android/gms/common/internal/g;)V

    .line 128
    return-void
.end method
