.class final Lcom/google/android/gms/location/internal/d;
.super Lcom/google/android/gms/location/internal/e;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/location/l;

.field final synthetic e:Lcom/google/android/gms/location/internal/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/b;Lcom/google/android/gms/location/l;)V
    .locals 1

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/gms/location/internal/d;->e:Lcom/google/android/gms/location/internal/b;

    iput-object p2, p0, Lcom/google/android/gms/location/internal/d;->d:Lcom/google/android/gms/location/l;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/internal/e;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 1

    .prologue
    .line 142
    check-cast p1, Lcom/google/android/gms/location/internal/p;

    iget-object v0, p0, Lcom/google/android/gms/location/internal/d;->d:Lcom/google/android/gms/location/l;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/internal/p;->a(Lcom/google/android/gms/location/l;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/d;->a(Lcom/google/android/gms/common/api/aa;)V

    return-void
.end method
