.class final enum Lcom/google/glass/browser/ClutchHelper$ViewportPosition;
.super Ljava/lang/Enum;
.source "ClutchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/ClutchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewportPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/browser/ClutchHelper$ViewportPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

.field public static final enum BOTTOM:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

.field public static final enum BOTTOM_LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

.field public static final enum BOTTOM_RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

.field public static final enum CENTER:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

.field public static final enum LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

.field public static final enum RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

.field public static final enum TOP:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

.field public static final enum TOP_LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

.field public static final enum TOP_RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->CENTER:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 92
    new-instance v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->TOP:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 93
    new-instance v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    const-string v1, "TOP_LEFT"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->TOP_LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 94
    new-instance v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 95
    new-instance v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    const-string v1, "BOTTOM_LEFT"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->BOTTOM_LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 96
    new-instance v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    const-string v1, "BOTTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->BOTTOM:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 97
    new-instance v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->BOTTOM_RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 98
    new-instance v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    const-string v1, "RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 99
    new-instance v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    const-string v1, "TOP_RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->TOP_RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    sget-object v1, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->CENTER:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->TOP:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->TOP_LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->BOTTOM_LEFT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->BOTTOM:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->BOTTOM_RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->TOP_RIGHT:Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->$VALUES:[Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/browser/ClutchHelper$ViewportPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/browser/ClutchHelper$ViewportPosition;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->$VALUES:[Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    invoke-virtual {v0}, [Lcom/google/glass/browser/ClutchHelper$ViewportPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/browser/ClutchHelper$ViewportPosition;

    return-object v0
.end method
