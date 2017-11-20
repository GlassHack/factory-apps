.class public final enum Lcom/google/android/location/reporting/config/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/reporting/config/d;

.field public static final enum b:Lcom/google/android/location/reporting/config/d;

.field private static final synthetic c:[Lcom/google/android/location/reporting/config/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/google/android/location/reporting/config/d;

    const-string v1, "INACTIVATED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/reporting/config/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/reporting/config/d;->a:Lcom/google/android/location/reporting/config/d;

    new-instance v0, Lcom/google/android/location/reporting/config/d;

    const-string v1, "ACTIVATED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/reporting/config/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/reporting/config/d;->b:Lcom/google/android/location/reporting/config/d;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/location/reporting/config/d;

    sget-object v1, Lcom/google/android/location/reporting/config/d;->a:Lcom/google/android/location/reporting/config/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/reporting/config/d;->b:Lcom/google/android/location/reporting/config/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/location/reporting/config/d;->c:[Lcom/google/android/location/reporting/config/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/reporting/config/d;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/google/android/location/reporting/config/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/d;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/reporting/config/d;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/location/reporting/config/d;->c:[Lcom/google/android/location/reporting/config/d;

    invoke-virtual {v0}, [Lcom/google/android/location/reporting/config/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/reporting/config/d;

    return-object v0
.end method
