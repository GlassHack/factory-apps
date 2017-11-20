.class public final enum Lcom/google/android/location/d/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/d/g;

.field public static final enum b:Lcom/google/android/location/d/g;

.field public static final enum c:Lcom/google/android/location/d/g;

.field public static final enum d:Lcom/google/android/location/d/g;

.field public static final enum e:Lcom/google/android/location/d/g;

.field public static final enum f:Lcom/google/android/location/d/g;

.field private static final synthetic i:[Lcom/google/android/location/d/g;


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 30
    new-instance v0, Lcom/google/android/location/d/g;

    const-string v1, "ANDROID"

    const-string v2, "com.google.android.location"

    const-string v3, "com.google.android.location.internal.server.NetworkLocationService"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/location/d/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/d/g;->a:Lcom/google/android/location/d/g;

    .line 32
    new-instance v0, Lcom/google/android/location/d/g;

    const-string v1, "DEMO"

    const-string v2, "com.google.nlpdemoapp"

    const-string v3, "com.google.android.location.internal.server.GoogleLocationService"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/location/d/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/d/g;->b:Lcom/google/android/location/d/g;

    .line 34
    new-instance v0, Lcom/google/android/location/d/g;

    const-string v1, "GMM"

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.location.internal.server.GoogleLocationService"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/android/location/d/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/d/g;->c:Lcom/google/android/location/d/g;

    .line 37
    new-instance v0, Lcom/google/android/location/d/g;

    const-string v1, "OLD_GMM"

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.location.internal.server.NetworkLocationService"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/google/android/location/d/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/d/g;->d:Lcom/google/android/location/d/g;

    .line 39
    new-instance v0, Lcom/google/android/location/d/g;

    const-string v1, "GMS"

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.location.internal.server.GoogleLocationService"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/google/android/location/d/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/d/g;->e:Lcom/google/android/location/d/g;

    .line 41
    new-instance v0, Lcom/google/android/location/d/g;

    const-string v1, "NONE"

    const/4 v2, 0x5

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/d/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/d/g;->f:Lcom/google/android/location/d/g;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/location/d/g;

    sget-object v1, Lcom/google/android/location/d/g;->a:Lcom/google/android/location/d/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/d/g;->b:Lcom/google/android/location/d/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/location/d/g;->c:Lcom/google/android/location/d/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/location/d/g;->d:Lcom/google/android/location/d/g;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/location/d/g;->e:Lcom/google/android/location/d/g;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/d/g;->f:Lcom/google/android/location/d/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/d/g;->i:[Lcom/google/android/location/d/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/google/android/location/d/g;->g:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/google/android/location/d/g;->h:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/d/g;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/android/location/d/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/g;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/d/g;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/location/d/g;->i:[Lcom/google/android/location/d/g;

    invoke-virtual {v0}, [Lcom/google/android/location/d/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/d/g;

    return-object v0
.end method
