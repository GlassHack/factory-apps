.class public final Lcom/google/android/gms/location/places/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/aa;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/Status;

.field public final b:Lcom/google/android/gms/location/places/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/places/h;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/gms/location/places/y;->a:Lcom/google/android/gms/common/api/Status;

    .line 47
    iput-object p2, p0, Lcom/google/android/gms/location/places/y;->b:Lcom/google/android/gms/location/places/h;

    .line 48
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/location/places/y;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
