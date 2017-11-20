.class public final enum Lcom/google/glass/sync/OverridePolicy;
.super Ljava/lang/Enum;
.source "OverridePolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/sync/OverridePolicy;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/sync/OverridePolicy;

.field public static final enum ALL_MEDIA:Lcom/google/glass/sync/OverridePolicy;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/sync/OverridePolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NONE:Lcom/google/glass/sync/OverridePolicy;

.field public static final enum PHOTOS:Lcom/google/glass/sync/OverridePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/google/glass/sync/OverridePolicy;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/sync/OverridePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;

    .line 15
    new-instance v0, Lcom/google/glass/sync/OverridePolicy;

    const-string v1, "PHOTOS"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/sync/OverridePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sync/OverridePolicy;->PHOTOS:Lcom/google/glass/sync/OverridePolicy;

    .line 18
    new-instance v0, Lcom/google/glass/sync/OverridePolicy;

    const-string v1, "ALL_MEDIA"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/sync/OverridePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sync/OverridePolicy;->ALL_MEDIA:Lcom/google/glass/sync/OverridePolicy;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/sync/OverridePolicy;

    sget-object v1, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/sync/OverridePolicy;->PHOTOS:Lcom/google/glass/sync/OverridePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/sync/OverridePolicy;->ALL_MEDIA:Lcom/google/glass/sync/OverridePolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/sync/OverridePolicy;->$VALUES:[Lcom/google/glass/sync/OverridePolicy;

    .line 30
    new-instance v0, Lcom/google/glass/sync/OverridePolicy$1;

    invoke-direct {v0}, Lcom/google/glass/sync/OverridePolicy$1;-><init>()V

    sput-object v0, Lcom/google/glass/sync/OverridePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/sync/OverridePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/google/glass/sync/OverridePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/OverridePolicy;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/sync/OverridePolicy;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/glass/sync/OverridePolicy;->$VALUES:[Lcom/google/glass/sync/OverridePolicy;

    invoke-virtual {v0}, [Lcom/google/glass/sync/OverridePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/sync/OverridePolicy;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/glass/sync/OverridePolicy;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    return-void
.end method
