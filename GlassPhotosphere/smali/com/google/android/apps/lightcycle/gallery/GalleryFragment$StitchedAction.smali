.class final enum Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;
.super Ljava/lang/Enum;
.source "GalleryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StitchedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

.field public static final enum CREATE_LITTLE_PLANET:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

.field public static final enum DELETE:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

.field public static final enum SHARE:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

.field public static final enum SHARE_ON_MAPS:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

.field public static final enum STITCH:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

.field public static final enum VIEW:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

.field public static final enum ZIP:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->VIEW:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->SHARE:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    const-string v1, "SHARE_ON_MAPS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->SHARE_ON_MAPS:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    const-string v1, "CREATE_LITTLE_PLANET"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->CREATE_LITTLE_PLANET:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->DELETE:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    const-string v1, "ZIP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->ZIP:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    const-string v1, "STITCH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->STITCH:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    .line 86
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->VIEW:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->SHARE:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->SHARE_ON_MAPS:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->CREATE_LITTLE_PLANET:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->DELETE:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->ZIP:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->STITCH:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->$VALUES:[Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->$VALUES:[Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    invoke-virtual {v0}, [Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    return-object v0
.end method
