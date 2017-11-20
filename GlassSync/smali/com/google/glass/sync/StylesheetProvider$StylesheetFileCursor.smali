.class Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;
.super Landroid/database/AbstractCursor;
.source "StylesheetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/StylesheetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylesheetFileCursor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/StylesheetProvider;


# direct methods
.method private constructor <init>(Lcom/google/glass/sync/StylesheetProvider;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;->this$0:Lcom/google/glass/sync/StylesheetProvider;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/sync/StylesheetProvider;Lcom/google/glass/sync/StylesheetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/sync/StylesheetProvider;
    .param p2, "x1"    # Lcom/google/glass/sync/StylesheetProvider$1;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;-><init>(Lcom/google/glass/sync/StylesheetProvider;)V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "stylesheet_string"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stylesheet_fingerprint"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;->this$0:Lcom/google/glass/sync/StylesheetProvider;

    invoke-static {v0}, Lcom/google/glass/sync/StylesheetProvider;->access$100(Lcom/google/glass/sync/StylesheetProvider;)V

    .line 180
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;->this$0:Lcom/google/glass/sync/StylesheetProvider;

    invoke-static {v0}, Lcom/google/glass/sync/StylesheetProvider;->access$200(Lcom/google/glass/sync/StylesheetProvider;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 6
    .param p1, "column"    # I

    .prologue
    const/4 v2, 0x1

    .line 210
    if-ne p1, v2, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;->this$0:Lcom/google/glass/sync/StylesheetProvider;

    invoke-static {v0}, Lcom/google/glass/sync/StylesheetProvider;->access$100(Lcom/google/glass/sync/StylesheetProvider;)V

    .line 212
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;->this$0:Lcom/google/glass/sync/StylesheetProvider;

    invoke-static {v0}, Lcom/google/glass/sync/StylesheetProvider;->access$400(Lcom/google/glass/sync/StylesheetProvider;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "get fingerprint %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;->this$0:Lcom/google/glass/sync/StylesheetProvider;

    invoke-static {v4}, Lcom/google/glass/sync/StylesheetProvider;->access$300(Lcom/google/glass/sync/StylesheetProvider;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;->this$0:Lcom/google/glass/sync/StylesheetProvider;

    invoke-static {v0}, Lcom/google/glass/sync/StylesheetProvider;->access$300(Lcom/google/glass/sync/StylesheetProvider;)J

    move-result-wide v0

    .line 215
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;->this$0:Lcom/google/glass/sync/StylesheetProvider;

    invoke-static {v0}, Lcom/google/glass/sync/StylesheetProvider;->access$100(Lcom/google/glass/sync/StylesheetProvider;)V

    .line 193
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;->this$0:Lcom/google/glass/sync/StylesheetProvider;

    invoke-static {v0}, Lcom/google/glass/sync/StylesheetProvider;->access$200(Lcom/google/glass/sync/StylesheetProvider;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method
