.class public final enum Lcom/google/android/wearable/app/WearIconProvider$ResourceId;
.super Ljava/lang/Enum;
.source "WearIconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/app/WearIconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/wearable/app/WearIconProvider$ResourceId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

.field public static final enum DISMISS_MENU_RESOURCE_ID:Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

.field public static final enum OPEN_MENU_RESOURCE_ID:Lcom/google/android/wearable/app/WearIconProvider$ResourceId;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    const-string v1, "DISMISS_MENU_RESOURCE_ID"

    sget v2, Lcom/google/android/wearable/app/R$drawable;->ic_no_50:I

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->DISMISS_MENU_RESOURCE_ID:Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    .line 45
    new-instance v0, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    const-string v1, "OPEN_MENU_RESOURCE_ID"

    sget v2, Lcom/google/android/wearable/app/R$drawable;->ic_open_on_phone_64:I

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->OPEN_MENU_RESOURCE_ID:Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    sget-object v1, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->DISMISS_MENU_RESOURCE_ID:Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->OPEN_MENU_RESOURCE_ID:Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->$VALUES:[Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->id:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/wearable/app/WearIconProvider$ResourceId;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->id:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/wearable/app/WearIconProvider$ResourceId;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    return-object v0
.end method

.method public static values()[Lcom/google/android/wearable/app/WearIconProvider$ResourceId;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->$VALUES:[Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    invoke-virtual {v0}, [Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    return-object v0
.end method
