.class public final enum Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;
.super Ljava/lang/Enum;
.source "TutorialStatusContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/TutorialStatusContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TutorialType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

.field public static final enum AddContacts:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

.field public static final enum GlasswareStore:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

.field public static final enum LookAtScreen:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

.field public static final enum OnHeadDetection:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

.field public static final enum PersonalHotspot:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

.field public static final enum WifiNetwork:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

.field public static final enum Wink:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    const-string v1, "OnHeadDetection"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->OnHeadDetection:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    .line 39
    new-instance v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    const-string v1, "Wink"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->Wink:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    .line 40
    new-instance v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    const-string v1, "LookAtScreen"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->LookAtScreen:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    .line 41
    new-instance v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    const-string v1, "AddContacts"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->AddContacts:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    .line 42
    new-instance v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    const-string v1, "GlasswareStore"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->GlasswareStore:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    .line 43
    new-instance v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    const-string v1, "WifiNetwork"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->WifiNetwork:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    .line 44
    new-instance v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    const-string v1, "PersonalHotspot"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->PersonalHotspot:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    sget-object v1, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->OnHeadDetection:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->Wink:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->LookAtScreen:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->AddContacts:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->GlasswareStore:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->WifiNetwork:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->PersonalHotspot:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->$VALUES:[Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->$VALUES:[Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    invoke-virtual {v0}, [Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    return-object v0
.end method
