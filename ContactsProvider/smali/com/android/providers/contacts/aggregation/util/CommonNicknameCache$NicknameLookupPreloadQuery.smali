.class final Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache$NicknameLookupPreloadQuery;
.super Ljava/lang/Object;
.source "CommonNicknameCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NicknameLookupPreloadQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache$NicknameLookupPreloadQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
