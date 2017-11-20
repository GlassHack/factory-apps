.class Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GlobalSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchSuggestion"
.end annotation


# instance fields
.field contactId:J

.field filter:Ljava/lang/String;

.field icon1:Ljava/lang/String;

.field icon2:Ljava/lang/String;

.field intentAction:Ljava/lang/String;

.field intentData:Ljava/lang/String;

.field lastAccessTime:Ljava/lang/String;

.field lookupKey:Ljava/lang/String;

.field photoUri:Ljava/lang/String;

.field presence:I

.field text1:Ljava/lang/String;

.field text2:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/GlobalSearchSupport$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/contacts/GlobalSearchSupport$1;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;-><init>()V

    return-void
.end method

.method private addColumnValue(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p2, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-wide v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v0, "suggest_text_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    const-string v0, "suggest_text_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_2
    const-string v0, "suggest_icon_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_3
    const-string v0, "suggest_icon_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "suggest_intent_data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->intentData:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->buildUri()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->intentData:Ljava/lang/String;

    goto :goto_1

    .line 132
    :cond_6
    const-string v0, "suggest_intent_data_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 133
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_7
    const-string v0, "suggest_shortcut_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_8
    const-string v0, "suggest_intent_extra_data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 137
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_9
    const-string v0, "suggest_last_access_hint"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 139
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lastAccessTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 141
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid column name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    .line 95
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 96
    iget v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    invoke-static {v2}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    .line 99
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez p1, :cond_5

    .line 101
    iget-wide v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->intentData:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->buildUri()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->intentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lastAccessTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_2
    return-object v1

    .line 91
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    const v2, 0x10802ca

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    goto :goto_0

    .line 106
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->intentData:Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 113
    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->addColumnValue(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    .line 151
    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Ljava/lang/String;

    .line 152
    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    .line 154
    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 155
    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    .line 156
    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    .line 157
    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    .line 158
    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->intentData:Ljava/lang/String;

    .line 159
    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->intentAction:Ljava/lang/String;

    .line 160
    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lastAccessTime:Ljava/lang/String;

    .line 162
    return-void
.end method
