.class public final enum Lcom/google/glass/browser/TipsViewHelper$Tip;
.super Ljava/lang/Enum;
.source "TipsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/TipsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tip"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/browser/TipsViewHelper$Tip;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/browser/TipsViewHelper$Tip;

.field public static final enum TWO_FINGER_PAN:Lcom/google/glass/browser/TipsViewHelper$Tip;

.field public static final enum TWO_FINGER_ZOOM:Lcom/google/glass/browser/TipsViewHelper$Tip;


# instance fields
.field private final id:I

.field private final resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/google/glass/browser/TipsViewHelper$Tip;

    const-string v1, "TWO_FINGER_ZOOM"

    sget v2, Lcom/google/glass/browser/R$string;->two_finger_zoom_tip:I

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/glass/browser/TipsViewHelper$Tip;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/browser/TipsViewHelper$Tip;->TWO_FINGER_ZOOM:Lcom/google/glass/browser/TipsViewHelper$Tip;

    .line 34
    new-instance v0, Lcom/google/glass/browser/TipsViewHelper$Tip;

    const-string v1, "TWO_FINGER_PAN"

    sget v2, Lcom/google/glass/browser/R$string;->two_finger_pan_tip:I

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/glass/browser/TipsViewHelper$Tip;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/browser/TipsViewHelper$Tip;->TWO_FINGER_PAN:Lcom/google/glass/browser/TipsViewHelper$Tip;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/browser/TipsViewHelper$Tip;

    sget-object v1, Lcom/google/glass/browser/TipsViewHelper$Tip;->TWO_FINGER_ZOOM:Lcom/google/glass/browser/TipsViewHelper$Tip;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/browser/TipsViewHelper$Tip;->TWO_FINGER_PAN:Lcom/google/glass/browser/TipsViewHelper$Tip;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/browser/TipsViewHelper$Tip;->$VALUES:[Lcom/google/glass/browser/TipsViewHelper$Tip;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/google/glass/browser/TipsViewHelper$Tip;->id:I

    .line 41
    iput p4, p0, Lcom/google/glass/browser/TipsViewHelper$Tip;->resId:I

    .line 42
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/browser/TipsViewHelper$Tip;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/TipsViewHelper$Tip;

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/browser/TipsViewHelper$Tip;->id:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/browser/TipsViewHelper$Tip;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/TipsViewHelper$Tip;

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/browser/TipsViewHelper$Tip;->resId:I

    return v0
.end method

.method static fromResId(I)Lcom/google/glass/browser/TipsViewHelper$Tip;
    .locals 5
    .param p0, "resId"    # I

    .prologue
    .line 45
    invoke-static {}, Lcom/google/glass/browser/TipsViewHelper$Tip;->values()[Lcom/google/glass/browser/TipsViewHelper$Tip;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 46
    .local v0, "tip":Lcom/google/glass/browser/TipsViewHelper$Tip;
    iget v4, v0, Lcom/google/glass/browser/TipsViewHelper$Tip;->resId:I

    if-ne v4, p0, :cond_0

    .line 47
    return-object v0

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "tip":Lcom/google/glass/browser/TipsViewHelper$Tip;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected Tip resId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/browser/TipsViewHelper$Tip;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/google/glass/browser/TipsViewHelper$Tip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/browser/TipsViewHelper$Tip;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/browser/TipsViewHelper$Tip;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/browser/TipsViewHelper$Tip;->$VALUES:[Lcom/google/glass/browser/TipsViewHelper$Tip;

    invoke-virtual {v0}, [Lcom/google/glass/browser/TipsViewHelper$Tip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/browser/TipsViewHelper$Tip;

    return-object v0
.end method
