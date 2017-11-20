.class public Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/response/q;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/google/android/gms/common/server/response/q;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->CREATOR:Lcom/google/android/gms/common/server/response/q;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p1, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->a:I

    .line 209
    iput-object p2, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->b:Ljava/lang/String;

    .line 210
    iput-object p3, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->c:Ljava/util/ArrayList;

    .line 211
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->a:I

    .line 216
    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->b:Ljava/lang/String;

    .line 217
    invoke-static {p2}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->c:Ljava/util/ArrayList;

    .line 218
    return-void
.end method

.method private static a(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    .line 225
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    new-instance v4, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)V

    .line 228
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 230
    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/util/HashMap;
    .locals 5

    .prologue
    .line 234
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 236
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 237
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;

    .line 239
    iget-object v4, v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->c:Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 241
    :cond_0
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->CREATOR:Lcom/google/android/gms/common/server/response/q;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->CREATOR:Lcom/google/android/gms/common/server/response/q;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/server/response/q;->a(Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;Landroid/os/Parcel;)V

    .line 252
    return-void
.end method
