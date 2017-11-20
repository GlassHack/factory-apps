.class public Lcom/google/android/gms/people/cp2/AndroidContactsUtils;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "PeopleCp2Helper"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/gms/people/model/AggregatedPerson;)Ljava/lang/Long;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/people/model/AggregatedPerson;->getContactIds()Ljava/lang/Iterable;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method

.method public static getContactLookupUri(Landroid/content/Context;Lcom/google/android/gms/people/model/AggregatedPerson;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/google/android/gms/people/model/AggregatedPerson;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/people/cp2/AndroidContactsUtils;->a(Lcom/google/android/gms/people/model/AggregatedPerson;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/people/cp2/AndroidContactsUtils;->getContactLookupUriFromAndroidContactId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/people/model/AggregatedPerson;->getGaiaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/people/model/AggregatedPerson;->getOwnerAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/people/model/AggregatedPerson;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/people/cp2/AndroidContactsUtils;->getContactLookupUriFromGaiaId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContactLookupUri(Landroid/content/Context;Lcom/google/android/gms/people/model/AutocompleteEntry;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/google/android/gms/people/model/AutocompleteEntry;

    .prologue
    invoke-interface {p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getAndroidContactId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getAndroidContactId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/people/cp2/AndroidContactsUtils;->getContactLookupUriFromAndroidContactId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getFocusContactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getOwnerAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getFocusContactId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/people/cp2/AndroidContactsUtils;->getContactLookupUriFromFocusContactId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getGaiaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getOwnerAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/people/model/AutocompleteEntry;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/people/cp2/AndroidContactsUtils;->getContactLookupUriFromGaiaId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContactLookupUriFromAndroidContactId(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/cp2/a;->getContactLookupUriFromAndroidContactId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContactLookupUriFromFocusContactId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "focusId"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/cp2/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/people/cp2/a;->getContactLookupUriFromAndroidContactId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContactLookupUriFromGaiaId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "gaiaId"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/cp2/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/people/cp2/a;->getContactLookupUriFromAndroidContactId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
