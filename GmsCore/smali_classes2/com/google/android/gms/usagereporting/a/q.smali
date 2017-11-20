.class final Lcom/google/android/gms/usagereporting/a/q;
.super Lcom/google/android/gms/usagereporting/a/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/usagereporting/c;

.field final synthetic b:Lcom/google/android/gms/usagereporting/a/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/usagereporting/a/o;Lcom/google/android/gms/usagereporting/c;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/gms/usagereporting/a/q;->b:Lcom/google/android/gms/usagereporting/a/o;

    iput-object p2, p0, Lcom/google/android/gms/usagereporting/a/q;->a:Lcom/google/android/gms/usagereporting/c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/a/t;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/q;->a:Lcom/google/android/gms/usagereporting/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/usagereporting/c;->a(Lcom/google/android/gms/common/api/aa;)V

    .line 128
    return-void
.end method
