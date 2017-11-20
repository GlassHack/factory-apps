.class public final enum Lcom/google/glass/util/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/FileType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/FileType;

.field public static final enum ATTACHMENT:Lcom/google/glass/util/FileType;

.field public static final enum AUDIO:Lcom/google/glass/util/FileType;

.field public static final enum BUG_REPORT:Lcom/google/glass/util/FileType;

.field public static final enum BUNDLE_STORE:Lcom/google/glass/util/FileType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/util/FileType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GLASSWARE_ICON:Lcom/google/glass/util/FileType;

.field public static final enum HTML:Lcom/google/glass/util/FileType;

.field public static final enum ICON:Lcom/google/glass/util/FileType;

.field public static final enum NONE:Lcom/google/glass/util/FileType;

.field public static final enum PICTURE:Lcom/google/glass/util/FileType;

.field public static final enum PROTO_BUFFER:Lcom/google/glass/util/FileType;

.field public static final enum SCREENSHOT:Lcom/google/glass/util/FileType;

.field public static final enum SHARE:Lcom/google/glass/util/FileType;

.field public static final enum THUMBNAIL:Lcom/google/glass/util/FileType;

.field public static final enum VIDEO:Lcom/google/glass/util/FileType;


# instance fields
.field public prefix:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->NONE:Lcom/google/glass/util/FileType;

    .line 17
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "ATTACHMENT"

    const-string v2, "a_"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    .line 18
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "AUDIO"

    const-string v2, "o_"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->AUDIO:Lcom/google/glass/util/FileType;

    .line 19
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "BUG_REPORT"

    const-string v2, "b_"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->BUG_REPORT:Lcom/google/glass/util/FileType;

    .line 20
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "BUNDLE_STORE"

    const-string v2, "bs_"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->BUNDLE_STORE:Lcom/google/glass/util/FileType;

    .line 21
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "GLASSWARE_ICON"

    const/4 v2, 0x5

    const-string v3, "gi_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->GLASSWARE_ICON:Lcom/google/glass/util/FileType;

    .line 22
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "HTML"

    const/4 v2, 0x6

    const-string v3, "h_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->HTML:Lcom/google/glass/util/FileType;

    .line 23
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "ICON"

    const/4 v2, 0x7

    const-string v3, "i_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->ICON:Lcom/google/glass/util/FileType;

    .line 24
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "PICTURE"

    const/16 v2, 0x8

    const-string v3, "p_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->PICTURE:Lcom/google/glass/util/FileType;

    .line 25
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "PROTO_BUFFER"

    const/16 v2, 0x9

    const-string v3, "pb_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->PROTO_BUFFER:Lcom/google/glass/util/FileType;

    .line 26
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "SCREENSHOT"

    const/16 v2, 0xa

    const-string v3, "ss_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->SCREENSHOT:Lcom/google/glass/util/FileType;

    .line 27
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "SHARE"

    const/16 v2, 0xb

    const-string v3, "s_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->SHARE:Lcom/google/glass/util/FileType;

    .line 28
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "THUMBNAIL"

    const/16 v2, 0xc

    const-string v3, "t_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    .line 29
    new-instance v0, Lcom/google/glass/util/FileType;

    const-string v1, "VIDEO"

    const/16 v2, 0xd

    const-string/jumbo v3, "v_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/FileType;->VIDEO:Lcom/google/glass/util/FileType;

    .line 15
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/glass/util/FileType;

    sget-object v1, Lcom/google/glass/util/FileType;->NONE:Lcom/google/glass/util/FileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/util/FileType;->AUDIO:Lcom/google/glass/util/FileType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/util/FileType;->BUG_REPORT:Lcom/google/glass/util/FileType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/glass/util/FileType;->BUNDLE_STORE:Lcom/google/glass/util/FileType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/util/FileType;->GLASSWARE_ICON:Lcom/google/glass/util/FileType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/util/FileType;->HTML:Lcom/google/glass/util/FileType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/util/FileType;->ICON:Lcom/google/glass/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/util/FileType;->PICTURE:Lcom/google/glass/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/util/FileType;->PROTO_BUFFER:Lcom/google/glass/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/util/FileType;->SCREENSHOT:Lcom/google/glass/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/util/FileType;->SHARE:Lcom/google/glass/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/glass/util/FileType;->VIDEO:Lcom/google/glass/util/FileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/util/FileType;->$VALUES:[Lcom/google/glass/util/FileType;

    .line 59
    new-instance v0, Lcom/google/glass/util/FileType$1;

    invoke-direct {v0}, Lcom/google/glass/util/FileType$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/FileType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/google/glass/util/FileType;->prefix:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/google/glass/util/FileType;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {}, Lcom/google/glass/util/FileType;->values()[Lcom/google/glass/util/FileType;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 41
    .local v1, "type":Lcom/google/glass/util/FileType;
    iget-object v0, v1, Lcom/google/glass/util/FileType;->prefix:Ljava/lang/String;

    .line 42
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "type":Lcom/google/glass/util/FileType;
    :goto_1
    return-object v1

    .line 40
    .restart local v0    # "prefix":Ljava/lang/String;
    .restart local v1    # "type":Lcom/google/glass/util/FileType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "type":Lcom/google/glass/util/FileType;
    :cond_1
    sget-object v1, Lcom/google/glass/util/FileType;->NONE:Lcom/google/glass/util/FileType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/FileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/google/glass/util/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/FileType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/FileType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/glass/util/FileType;->$VALUES:[Lcom/google/glass/util/FileType;

    invoke-virtual {v0}, [Lcom/google/glass/util/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/FileType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/glass/util/FileType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
