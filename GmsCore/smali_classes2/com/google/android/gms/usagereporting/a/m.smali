.class final Lcom/google/android/gms/usagereporting/a/m;
.super Lcom/google/android/gms/usagereporting/c;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/usagereporting/f;

.field final synthetic e:Lcom/google/android/gms/common/api/j;

.field final synthetic f:Lcom/google/android/gms/usagereporting/a/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/usagereporting/a/j;Lcom/google/android/gms/usagereporting/f;Lcom/google/android/gms/common/api/j;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/gms/usagereporting/a/m;->f:Lcom/google/android/gms/usagereporting/a/j;

    iput-object p2, p0, Lcom/google/android/gms/usagereporting/a/m;->d:Lcom/google/android/gms/usagereporting/f;

    iput-object p3, p0, Lcom/google/android/gms/usagereporting/a/m;->e:Lcom/google/android/gms/common/api/j;

    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 0

    .prologue
    .line 84
    return-object p1
.end method

.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 2

    .prologue
    .line 84
    check-cast p1, Lcom/google/android/gms/usagereporting/a/o;

    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/m;->d:Lcom/google/android/gms/usagereporting/f;

    iget-object v1, p0, Lcom/google/android/gms/usagereporting/a/m;->e:Lcom/google/android/gms/common/api/j;

    invoke-virtual {p1, v0, p0, v1}, Lcom/google/android/gms/usagereporting/a/o;->a(Lcom/google/android/gms/usagereporting/f;Lcom/google/android/gms/usagereporting/c;Lcom/google/android/gms/common/api/j;)V

    return-void
.end method
