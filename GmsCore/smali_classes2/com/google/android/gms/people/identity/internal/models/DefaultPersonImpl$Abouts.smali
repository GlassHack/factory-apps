.class public final Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/identity/internal/models/d;

.field private static final f:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1844
    new-instance v0, Lcom/google/android/gms/people/identity/internal/models/d;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/models/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/d;

    .line 1866
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1869
    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->f:Ljava/util/HashMap;

    const-string v1, "metadata"

    const-string v2, "metadata"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->f:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->f:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1913
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 1914
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->b:I

    .line 1915
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->a:Ljava/util/Set;

    .line 1916
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 1926
    iput-object p1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->a:Ljava/util/Set;

    .line 1927
    iput p2, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->b:I

    .line 1928
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->c:Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    .line 1929
    iput-object p4, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->d:Ljava/lang/String;

    .line 1930
    iput-object p5, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->e:Ljava/lang/String;

    .line 1931
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2045
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1878
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 2117
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 2118
    packed-switch v0, :pswitch_data_0

    .line 2123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a known custom type.  Found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2120
    :pswitch_0
    check-cast p3, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->c:Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    .line 2127
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2128
    return-void

    .line 2118
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2099
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 2100
    packed-switch v0, :pswitch_data_0

    .line 2108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be a String."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2102
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->d:Ljava/lang/String;

    .line 2111
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2112
    return-void

    .line 2105
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->e:Ljava/lang/String;

    goto :goto_0

    .line 2100
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2060
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2068
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown safe parcelable id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2062
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->c:Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    .line 2066
    :goto_0
    return-object v0

    .line 2064
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->d:Ljava/lang/String;

    goto :goto_0

    .line 2066
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->e:Ljava/lang/String;

    goto :goto_0

    .line 2060
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2050
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 2034
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/d;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2145
    instance-of v0, p1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;

    if-nez v0, :cond_0

    move v0, v1

    .line 2176
    :goto_0
    return v0

    .line 2150
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 2151
    goto :goto_0

    .line 2154
    :cond_1
    check-cast p1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;

    .line 2155
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 2156
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2157
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2159
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2161
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2166
    goto :goto_0

    .line 2169
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 2171
    goto :goto_0

    :cond_5
    move v0, v2

    .line 2176
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 2132
    const/4 v0, 0x0

    .line 2133
    sget-object v1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 2134
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2135
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 2136
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 2138
    goto :goto_0

    .line 2139
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 2039
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/d;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/identity/internal/models/d;->a(Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;Landroid/os/Parcel;I)V

    .line 2040
    return-void
.end method
