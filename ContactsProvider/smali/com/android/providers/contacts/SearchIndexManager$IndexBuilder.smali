.class public Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;
.super Ljava/lang/Object;
.source "SearchIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/SearchIndexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexBuilder"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mSbContent:Ljava/lang/StringBuilder;

.field private mSbElementContent:Ljava/lang/StringBuilder;

.field private mSbName:Ljava/lang/StringBuilder;

.field private mSbTokens:Ljava/lang/StringBuilder;

.field private mUniqueElements:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    return-void
.end method

.method private appendContent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "format"    # I

    .prologue
    const/16 v1, 0x20

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 150
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private appendNameInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    return-void
.end method


# virtual methods
.method public appendContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContent(Ljava/lang/String;I)V

    .line 143
    return-void
.end method

.method public appendContentFromColumn(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public appendContentFromColumn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "format"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContent(Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method public appendName(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    :cond_0
    return-void

    .line 198
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendNameInternal(Ljava/lang/String;)V

    .line 217
    invoke-static {p1}, Lcom/android/providers/contacts/SearchIndexManager;->splitIntoFtsTokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 218
    .local v2, "nameParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 219
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    .local v1, "namePart":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 221
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendNameInternal(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public appendNameFromColumn(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public appendToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public commit()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 120
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 131
    .end local v0    # "content":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokens()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 88
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 90
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 91
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 92
    return-void
.end method

.method setCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n Tokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
