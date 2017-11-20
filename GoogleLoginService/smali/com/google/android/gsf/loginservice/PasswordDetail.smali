.class public final enum Lcom/google/android/gsf/loginservice/PasswordDetail;
.super Ljava/lang/Enum;
.source "PasswordDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/loginservice/PasswordDetail;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum ADDRESS_NOT_AVAILABLE:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum CONSECUTIVE_SEPARATORS:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum EMPTY:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum ILLEGAL_CHARS:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum INVALID_DOMAIN:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum NOT_GMAIL_DOMAIN:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum NO_AT_SIGN:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum NO_DOMAIN:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum NO_USER:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum NUMBERS_ONLY:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum SEPARATOR_FIRST:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum SEPARATOR_LAST:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum TOO_BIG:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum TOO_MANY_AT_SIGNS:Lcom/google/android/gsf/loginservice/PasswordDetail;

.field public static final enum TOO_SMALL:Lcom/google/android/gsf/loginservice/PasswordDetail;


# instance fields
.field private final mResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f07009e

    .line 13
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "TOO_SMALL"

    const v2, 0x7f0700a1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->TOO_SMALL:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 14
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "TOO_BIG"

    const v2, 0x7f0700a1

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->TOO_BIG:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 15
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "NUMBERS_ONLY"

    const v2, 0x7f0700a2

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->NUMBERS_ONLY:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 16
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "ILLEGAL_CHARS"

    const v2, 0x7f0700a3

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->ILLEGAL_CHARS:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 17
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "ADDRESS_NOT_AVAILABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->ADDRESS_NOT_AVAILABLE:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 21
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "NOT_GMAIL_DOMAIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->NOT_GMAIL_DOMAIN:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 22
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "SEPARATOR_FIRST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->SEPARATOR_FIRST:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 23
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "SEPARATOR_LAST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->SEPARATOR_LAST:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 24
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "CONSECUTIVE_SEPARATORS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->CONSECUTIVE_SEPARATORS:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 25
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "INVALID_DOMAIN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->INVALID_DOMAIN:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 26
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "EMPTY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->EMPTY:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 27
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "NO_AT_SIGN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->NO_AT_SIGN:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 28
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "NO_USER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->NO_USER:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 29
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "NO_DOMAIN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->NO_DOMAIN:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 30
    new-instance v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    const-string v1, "TOO_MANY_AT_SIGNS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/PasswordDetail;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->TOO_MANY_AT_SIGNS:Lcom/google/android/gsf/loginservice/PasswordDetail;

    .line 11
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/android/gsf/loginservice/PasswordDetail;

    sget-object v1, Lcom/google/android/gsf/loginservice/PasswordDetail;->TOO_SMALL:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gsf/loginservice/PasswordDetail;->TOO_BIG:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gsf/loginservice/PasswordDetail;->NUMBERS_ONLY:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gsf/loginservice/PasswordDetail;->ILLEGAL_CHARS:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/gsf/loginservice/PasswordDetail;->ADDRESS_NOT_AVAILABLE:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gsf/loginservice/PasswordDetail;->NOT_GMAIL_DOMAIN:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gsf/loginservice/PasswordDetail;->SEPARATOR_FIRST:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gsf/loginservice/PasswordDetail;->SEPARATOR_LAST:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gsf/loginservice/PasswordDetail;->CONSECUTIVE_SEPARATORS:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gsf/loginservice/PasswordDetail;->INVALID_DOMAIN:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gsf/loginservice/PasswordDetail;->EMPTY:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gsf/loginservice/PasswordDetail;->NO_AT_SIGN:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gsf/loginservice/PasswordDetail;->NO_USER:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gsf/loginservice/PasswordDetail;->NO_DOMAIN:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gsf/loginservice/PasswordDetail;->TOO_MANY_AT_SIGNS:Lcom/google/android/gsf/loginservice/PasswordDetail;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->$VALUES:[Lcom/google/android/gsf/loginservice/PasswordDetail;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/google/android/gsf/loginservice/PasswordDetail;->mResId:I

    .line 37
    return-void
.end method

.method public static defaultMessageId()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f07009e

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/PasswordDetail;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/loginservice/PasswordDetail;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gsf/loginservice/PasswordDetail;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/gsf/loginservice/PasswordDetail;->$VALUES:[Lcom/google/android/gsf/loginservice/PasswordDetail;

    invoke-virtual {v0}, [Lcom/google/android/gsf/loginservice/PasswordDetail;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/loginservice/PasswordDetail;

    return-object v0
.end method


# virtual methods
.method public getMessageId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/gsf/loginservice/PasswordDetail;->mResId:I

    return v0
.end method
