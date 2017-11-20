.class public final enum Lcom/google/glass/userevent/UserEventAction$Category;
.super Ljava/lang/Enum;
.source "UserEventAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/userevent/UserEventAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/userevent/UserEventAction$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum PHONE_CALL:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum PHOTO:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum SHARE:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum SMS:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum VIDEO:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

.field public static final enum VOLUME:Lcom/google/glass/userevent/UserEventAction$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 565
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 566
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "SEE_EVENT_DATA"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 567
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->PHOTO:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 568
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 569
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->VIDEO:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 570
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "SHARE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->SHARE:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 571
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "SMS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->SMS:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 572
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "PHONE_CALL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 573
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "MUSIC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 574
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "VOICE_COMMAND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 575
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "VOLUME"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->VOLUME:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 576
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "SETUP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 577
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "CONNECTIVITY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 578
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "SYNC"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 579
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "NAVIGATION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 580
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$Category;

    const-string v1, "STABILITY"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/UserEventAction$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

    .line 564
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/google/glass/userevent/UserEventAction$Category;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction$Category;->UNDEFINED:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/userevent/UserEventAction$Category;->SEE_EVENT_DATA:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/userevent/UserEventAction$Category;->PHOTO:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/userevent/UserEventAction$Category;->SEARCH:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/userevent/UserEventAction$Category;->VIDEO:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$Category;->SHARE:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$Category;->SMS:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$Category;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$Category;->MUSIC:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$Category;->VOICE_COMMAND:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$Category;->VOLUME:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$Category;->SETUP:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$Category;->CONNECTIVITY:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$Category;->SYNC:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$Category;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$Category;->STABILITY:Lcom/google/glass/userevent/UserEventAction$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->$VALUES:[Lcom/google/glass/userevent/UserEventAction$Category;

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
    .line 564
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/userevent/UserEventAction$Category;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 564
    const-class v0, Lcom/google/glass/userevent/UserEventAction$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventAction$Category;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/userevent/UserEventAction$Category;
    .locals 1

    .prologue
    .line 564
    sget-object v0, Lcom/google/glass/userevent/UserEventAction$Category;->$VALUES:[Lcom/google/glass/userevent/UserEventAction$Category;

    invoke-virtual {v0}, [Lcom/google/glass/userevent/UserEventAction$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/userevent/UserEventAction$Category;

    return-object v0
.end method
