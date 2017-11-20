.class public final Lcom/google/android/gms/location/places/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/gms/common/api/d;

.field public static final b:Lcom/google/android/gms/common/api/a;

.field public static final c:Lcom/google/android/gms/location/places/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/gms/common/api/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/s;->a:Lcom/google/android/gms/common/api/d;

    .line 95
    new-instance v0, Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/location/places/t;

    invoke-direct {v1}, Lcom/google/android/gms/location/places/t;-><init>()V

    sget-object v2, Lcom/google/android/gms/location/places/s;->a:Lcom/google/android/gms/common/api/d;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/ac;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/d;[Lcom/google/android/gms/common/api/ac;)V

    sput-object v0, Lcom/google/android/gms/location/places/s;->b:Lcom/google/android/gms/common/api/a;

    .line 113
    new-instance v0, Lcom/google/android/gms/location/places/z;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/s;->c:Lcom/google/android/gms/location/places/w;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/common/api/a;
    .locals 4

    .prologue
    .line 109
    new-instance v0, Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/location/places/t;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/t;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/location/places/s;->a:Lcom/google/android/gms/common/api/d;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/ac;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/d;[Lcom/google/android/gms/common/api/ac;)V

    return-object v0
.end method
