.class final enum Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;
.super Ljava/lang/Enum;
.source "EntityCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TimestampFieldOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

.field public static final enum CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

.field public static final enum CREATION_AND_CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

.field public static final enum PHONE_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1181
    new-instance v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    const-string v1, "CONTENT_USAGE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .line 1185
    new-instance v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    const-string v1, "CREATION_AND_CONTENT_USAGE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CREATION_AND_CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .line 1188
    new-instance v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    const-string v1, "PHONE_USAGE"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->PHONE_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .line 1178
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    sget-object v1, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CREATION_AND_CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->PHONE_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->$VALUES:[Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

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
    .line 1178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1178
    const-class v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;
    .locals 1

    .prologue
    .line 1178
    sget-object v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->$VALUES:[Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    invoke-virtual {v0}, [Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    return-object v0
.end method
