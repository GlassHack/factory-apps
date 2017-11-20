.class final Lcom/google/android/location/o/p;
.super Lcom/google/android/location/o/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/l;

.field final synthetic b:Lcom/google/android/location/o/n;


# direct methods
.method constructor <init>(Lcom/google/android/location/o/n;Lcom/google/android/gms/location/l;)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/location/o/p;->b:Lcom/google/android/location/o/n;

    iput-object p2, p0, Lcom/google/android/location/o/p;->a:Lcom/google/android/gms/location/l;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/o/r;-><init>(Lcom/google/android/location/o/n;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/y;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/location/o/p;->b:Lcom/google/android/location/o/n;

    iget-object v0, v0, Lcom/google/android/location/o/n;->c:Lcom/google/android/gms/location/d;

    iget-object v1, p0, Lcom/google/android/location/o/p;->b:Lcom/google/android/location/o/n;

    iget-object v1, v1, Lcom/google/android/location/o/n;->a:Lcom/google/android/gms/common/api/j;

    iget-object v2, p0, Lcom/google/android/location/o/p;->a:Lcom/google/android/gms/location/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/location/l;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    return-object v0
.end method
