.class public Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/people/identity/models/Person;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/identity/internal/models/c;

.field private static final M:Ljava/util/HashMap;


# instance fields
.field A:Ljava/util/List;

.field B:Ljava/util/List;

.field C:Ljava/util/List;

.field D:Ljava/util/List;

.field E:Ljava/lang/String;

.field F:Ljava/util/List;

.field G:Ljava/util/List;

.field H:Ljava/util/List;

.field I:Ljava/util/List;

.field J:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$SortKeys;

.field K:Ljava/util/List;

.field L:Ljava/util/List;

.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/util/List;

.field d:Ljava/util/List;

.field e:Ljava/lang/String;

.field f:Ljava/util/List;

.field g:Ljava/util/List;

.field k:Ljava/util/List;

.field l:Ljava/util/List;

.field m:Ljava/util/List;

.field n:Ljava/lang/String;

.field o:Ljava/util/List;

.field p:Ljava/util/List;

.field q:Ljava/lang/String;

.field r:Ljava/util/List;

.field s:Ljava/util/List;

.field t:Ljava/lang/String;

.field u:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$LegacyFields;

.field v:Ljava/util/List;

.field w:Ljava/util/List;

.field x:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;

.field y:Ljava/util/List;

.field z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/gms/people/identity/internal/models/c;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/models/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/c;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "abouts"

    const-string v2, "abouts"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Abouts;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "addresses"

    const-string v2, "addresses"

    const/4 v3, 0x3

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Addresses;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "ageRange"

    const-string v2, "ageRange"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "birthdays"

    const-string v2, "birthdays"

    const/4 v3, 0x5

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Birthdays;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "braggingRights"

    const-string v2, "braggingRights"

    const/4 v3, 0x6

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$BraggingRights;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "coverPhotos"

    const-string v2, "coverPhotos"

    const/4 v3, 0x7

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$CoverPhotos;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "customFields"

    const-string v2, "customFields"

    const/16 v3, 0x8

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$CustomFields;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "emails"

    const-string v2, "emails"

    const/16 v3, 0x9

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Emails;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "etag"

    const-string v2, "etag"

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "events"

    const-string v2, "events"

    const/16 v3, 0xb

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Events;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "genders"

    const-string v2, "genders"

    const/16 v3, 0xc

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Genders;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "images"

    const-string v2, "images"

    const/16 v3, 0xe

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Images;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "instantMessaging"

    const-string v2, "instantMessaging"

    const/16 v3, 0xf

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$InstantMessaging;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "language"

    const-string v2, "language"

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "legacyFields"

    const-string v2, "legacyFields"

    const/16 v3, 0x12

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$LegacyFields;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "linkedPeople"

    const-string v2, "linkedPeople"

    const/16 v3, 0x13

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "memberships"

    const-string v2, "memberships"

    const/16 v3, 0x14

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Memberships;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "metadata"

    const-string v2, "metadata"

    const/16 v3, 0x15

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "names"

    const-string v2, "names"

    const/16 v3, 0x16

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Names;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "nicknames"

    const-string v2, "nicknames"

    const/16 v3, 0x17

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Nicknames;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "occupations"

    const-string v2, "occupations"

    const/16 v3, 0x18

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Occupations;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "organizations"

    const-string v2, "organizations"

    const/16 v3, 0x19

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Organizations;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "phoneNumbers"

    const-string v2, "phoneNumbers"

    const/16 v3, 0x1a

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$PhoneNumbers;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "placesLived"

    const-string v2, "placesLived"

    const/16 v3, 0x1b

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$PlacesLived;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "profileUrl"

    const-string v2, "profileUrl"

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "relations"

    const-string v2, "relations"

    const/16 v3, 0x1d

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Relations;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "relationshipInterests"

    const-string v2, "relationshipInterests"

    const/16 v3, 0x1e

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$RelationshipInterests;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "relationshipStatuses"

    const-string v2, "relationshipStatuses"

    const/16 v3, 0x1f

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$RelationshipStatuses;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "skills"

    const-string v2, "skills"

    const/16 v3, 0x20

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Skills;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "sortKeys"

    const-string v2, "sortKeys"

    const/16 v3, 0x21

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$SortKeys;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "taglines"

    const-string v2, "taglines"

    const/16 v3, 0x22

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Taglines;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    const-string v1, "urls"

    const-string v2, "urls"

    const/16 v3, 0x23

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Urls;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 508
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->b:I

    .line 509
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->a:Ljava/util/Set;

    .line 510
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$LegacyFields;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$SortKeys;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 550
    iput-object p1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->a:Ljava/util/Set;

    .line 551
    iput p2, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->b:I

    .line 552
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->c:Ljava/util/List;

    .line 553
    iput-object p4, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->d:Ljava/util/List;

    .line 554
    iput-object p5, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->e:Ljava/lang/String;

    .line 555
    iput-object p6, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->f:Ljava/util/List;

    .line 556
    iput-object p7, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->g:Ljava/util/List;

    .line 557
    iput-object p8, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->k:Ljava/util/List;

    .line 558
    iput-object p9, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->l:Ljava/util/List;

    .line 559
    iput-object p10, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->m:Ljava/util/List;

    .line 560
    iput-object p11, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->n:Ljava/lang/String;

    .line 561
    iput-object p12, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->o:Ljava/util/List;

    .line 562
    iput-object p13, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->p:Ljava/util/List;

    .line 563
    iput-object p14, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->q:Ljava/lang/String;

    .line 564
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->r:Ljava/util/List;

    .line 565
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->s:Ljava/util/List;

    .line 566
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->t:Ljava/lang/String;

    .line 567
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->u:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$LegacyFields;

    .line 568
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->v:Ljava/util/List;

    .line 569
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->w:Ljava/util/List;

    .line 570
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->x:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;

    .line 571
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->y:Ljava/util/List;

    .line 572
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->z:Ljava/util/List;

    .line 573
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->A:Ljava/util/List;

    .line 574
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->B:Ljava/util/List;

    .line 575
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->C:Ljava/util/List;

    .line 576
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->D:Ljava/util/List;

    .line 577
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->E:Ljava/lang/String;

    .line 578
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->F:Ljava/util/List;

    .line 579
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->G:Ljava/util/List;

    .line 580
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->H:Ljava/util/List;

    .line 581
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->I:Ljava/util/List;

    .line 582
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->J:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$SortKeys;

    .line 583
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->K:Ljava/util/List;

    .line 584
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->L:Ljava/util/List;

    .line 585
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14194
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 14335
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 14336
    sparse-switch v0, :sswitch_data_0

    .line 14347
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

    .line 14338
    :sswitch_0
    check-cast p3, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$LegacyFields;

    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->u:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$LegacyFields;

    .line 14351
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14352
    return-void

    .line 14341
    :sswitch_1
    check-cast p3, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;

    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->x:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;

    goto :goto_0

    .line 14344
    :sswitch_2
    check-cast p3, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$SortKeys;

    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->J:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$SortKeys;

    goto :goto_0

    .line 14336
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x15 -> :sswitch_1
        0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 14308
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 14309
    sparse-switch v0, :sswitch_data_0

    .line 14326
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

    .line 14311
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->e:Ljava/lang/String;

    .line 14329
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14330
    return-void

    .line 14314
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->n:Ljava/lang/String;

    goto :goto_0

    .line 14317
    :sswitch_2
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->q:Ljava/lang/String;

    goto :goto_0

    .line 14320
    :sswitch_3
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->t:Ljava/lang/String;

    goto :goto_0

    .line 14323
    :sswitch_4
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->E:Ljava/lang/String;

    goto :goto_0

    .line 14309
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x11 -> :sswitch_3
        0x1c -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 14357
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 14358
    packed-switch v0, :pswitch_data_0

    .line 14435
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a known array of custom type.  Found "

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

    .line 14360
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->c:Ljava/util/List;

    .line 14439
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14440
    return-void

    .line 14363
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->d:Ljava/util/List;

    goto :goto_0

    .line 14366
    :pswitch_3
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->f:Ljava/util/List;

    goto :goto_0

    .line 14369
    :pswitch_4
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->g:Ljava/util/List;

    goto :goto_0

    .line 14372
    :pswitch_5
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->k:Ljava/util/List;

    goto :goto_0

    .line 14375
    :pswitch_6
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->l:Ljava/util/List;

    goto :goto_0

    .line 14378
    :pswitch_7
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->m:Ljava/util/List;

    goto :goto_0

    .line 14381
    :pswitch_8
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->o:Ljava/util/List;

    goto :goto_0

    .line 14384
    :pswitch_9
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->p:Ljava/util/List;

    goto :goto_0

    .line 14387
    :pswitch_a
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->r:Ljava/util/List;

    goto :goto_0

    .line 14390
    :pswitch_b
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->s:Ljava/util/List;

    goto :goto_0

    .line 14393
    :pswitch_c
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->v:Ljava/util/List;

    goto :goto_0

    .line 14396
    :pswitch_d
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->w:Ljava/util/List;

    goto :goto_0

    .line 14399
    :pswitch_e
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->y:Ljava/util/List;

    goto :goto_0

    .line 14402
    :pswitch_f
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->z:Ljava/util/List;

    goto :goto_0

    .line 14405
    :pswitch_10
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->A:Ljava/util/List;

    goto :goto_0

    .line 14408
    :pswitch_11
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->B:Ljava/util/List;

    goto :goto_0

    .line 14411
    :pswitch_12
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->C:Ljava/util/List;

    goto :goto_0

    .line 14414
    :pswitch_13
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->D:Ljava/util/List;

    goto :goto_0

    .line 14417
    :pswitch_14
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->F:Ljava/util/List;

    goto :goto_0

    .line 14420
    :pswitch_15
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->G:Ljava/util/List;

    goto :goto_0

    .line 14423
    :pswitch_16
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->H:Ljava/util/List;

    goto :goto_0

    .line 14426
    :pswitch_17
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->I:Ljava/util/List;

    goto :goto_0

    .line 14429
    :pswitch_18
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->K:Ljava/util/List;

    goto :goto_0

    .line 14432
    :pswitch_19
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->L:Ljava/util/List;

    goto :goto_0

    .line 14358
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 14204
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->a:Ljava/util/Set;

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
    .line 14209
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 14277
    :pswitch_0
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

    .line 14211
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->c:Ljava/util/List;

    .line 14275
    :goto_0
    return-object v0

    .line 14213
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->d:Ljava/util/List;

    goto :goto_0

    .line 14215
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->e:Ljava/lang/String;

    goto :goto_0

    .line 14217
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->f:Ljava/util/List;

    goto :goto_0

    .line 14219
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->g:Ljava/util/List;

    goto :goto_0

    .line 14221
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->k:Ljava/util/List;

    goto :goto_0

    .line 14223
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->l:Ljava/util/List;

    goto :goto_0

    .line 14225
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->m:Ljava/util/List;

    goto :goto_0

    .line 14227
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->n:Ljava/lang/String;

    goto :goto_0

    .line 14229
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->o:Ljava/util/List;

    goto :goto_0

    .line 14231
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->p:Ljava/util/List;

    goto :goto_0

    .line 14233
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->q:Ljava/lang/String;

    goto :goto_0

    .line 14235
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->r:Ljava/util/List;

    goto :goto_0

    .line 14237
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->s:Ljava/util/List;

    goto :goto_0

    .line 14239
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->t:Ljava/lang/String;

    goto :goto_0

    .line 14241
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->u:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$LegacyFields;

    goto :goto_0

    .line 14243
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->v:Ljava/util/List;

    goto :goto_0

    .line 14245
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->w:Ljava/util/List;

    goto :goto_0

    .line 14247
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->x:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;

    goto :goto_0

    .line 14249
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->y:Ljava/util/List;

    goto :goto_0

    .line 14251
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->z:Ljava/util/List;

    goto :goto_0

    .line 14253
    :pswitch_16
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->A:Ljava/util/List;

    goto :goto_0

    .line 14255
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->B:Ljava/util/List;

    goto :goto_0

    .line 14257
    :pswitch_18
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->C:Ljava/util/List;

    goto :goto_0

    .line 14259
    :pswitch_19
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->D:Ljava/util/List;

    goto :goto_0

    .line 14261
    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->E:Ljava/lang/String;

    goto :goto_0

    .line 14263
    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->F:Ljava/util/List;

    goto :goto_0

    .line 14265
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->G:Ljava/util/List;

    goto :goto_0

    .line 14267
    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->H:Ljava/util/List;

    goto :goto_0

    .line 14269
    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->I:Ljava/util/List;

    goto :goto_0

    .line 14271
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->J:Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$SortKeys;

    goto :goto_0

    .line 14273
    :pswitch_20
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->K:Ljava/util/List;

    goto :goto_0

    .line 14275
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->L:Ljava/util/List;

    goto :goto_0

    .line 14209
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 14199
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 14183
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/c;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14457
    instance-of v0, p1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;

    if-nez v0, :cond_0

    move v0, v1

    .line 14488
    :goto_0
    return v0

    .line 14462
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 14463
    goto :goto_0

    .line 14466
    :cond_1
    check-cast p1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;

    .line 14467
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

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

    .line 14468
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14469
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14471
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 14473
    goto :goto_0

    :cond_3
    move v0, v1

    .line 14478
    goto :goto_0

    .line 14481
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 14483
    goto :goto_0

    :cond_5
    move v0, v2

    .line 14488
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 14444
    const/4 v0, 0x0

    .line 14445
    sget-object v1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->M:Ljava/util/HashMap;

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

    .line 14446
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14447
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 14448
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 14450
    goto :goto_0

    .line 14451
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 14188
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/c;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/identity/internal/models/c;->a(Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;Landroid/os/Parcel;I)V

    .line 14189
    return-void
.end method
