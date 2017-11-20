.class public final Lcom/google/android/gms/location/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;

.field public static b:Lcom/google/android/gms/location/d;

.field public static c:Lcom/google/android/gms/location/g;

.field private static final d:Lcom/google/android/gms/common/api/d;

.field private static final e:Lcom/google/android/gms/common/api/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/gms/common/api/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/n;->d:Lcom/google/android/gms/common/api/d;

    .line 32
    new-instance v0, Lcom/google/android/gms/location/o;

    invoke-direct {v0}, Lcom/google/android/gms/location/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/n;->e:Lcom/google/android/gms/common/api/c;

    .line 61
    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/location/n;->e:Lcom/google/android/gms/common/api/c;

    sget-object v2, Lcom/google/android/gms/location/n;->d:Lcom/google/android/gms/common/api/d;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/ac;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/d;[Lcom/google/android/gms/common/api/ac;)V

    sput-object v0, Lcom/google/android/gms/location/n;->a:Lcom/google/android/gms/common/api/a;

    .line 97
    new-instance v0, Lcom/google/android/gms/location/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/n;->b:Lcom/google/android/gms/location/d;

    .line 102
    new-instance v0, Lcom/google/android/gms/location/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/n;->c:Lcom/google/android/gms/location/g;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/common/api/d;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/gms/location/n;->d:Lcom/google/android/gms/common/api/d;

    return-object v0
.end method
