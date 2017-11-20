.class public Lcom/google/android/gms/common/server/response/FieldMappingDictionary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/response/p;


# instance fields
.field private final a:I

.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/common/server/response/p;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->CREATOR:Lcom/google/android/gms/common/server/response/p;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->a:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->c:Ljava/util/ArrayList;

    .line 55
    invoke-static {p2}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->a(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->b:Ljava/util/HashMap;

    .line 56
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->d:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->d()V

    .line 59
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 5

    .prologue
    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 79
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 80
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;

    .line 81
    iget-object v4, v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_0
    return-object v2
.end method

.method private d()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 67
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 69
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Lcom/google/android/gms/common/server/response/FieldMappingDictionary;)V

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->a:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method final b()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    new-instance v4, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 128
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_0
    return-object v2
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->CREATOR:Lcom/google/android/gms/common/server/response/p;

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 171
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->CREATOR:Lcom/google/android/gms/common/server/response/p;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/server/response/p;->a(Lcom/google/android/gms/common/server/response/FieldMappingDictionary;Landroid/os/Parcel;)V

    .line 182
    return-void
.end method
