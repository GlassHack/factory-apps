.class public Lcom/android/providers/contacts/LegacyApiSupport;
.super Ljava/lang/Object;
.source "LegacyApiSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;
    }
.end annotation


# static fields
.field private static CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

.field private static final CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

.field private static final EXTENSION_MIME_TYPES:[Ljava/lang/String;

.field private static final GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

.field private static final LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri;

.field private static final LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

.field private static final LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri;

.field private static final ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

.field private static final PHONE_MIME_TYPES:[Ljava/lang/String;

.field private static final PHOTO_MIME_TYPES:[Ljava/lang/String;

.field private static final sContactMethodProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExtensionProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGroupMembershipProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGroupProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOrganizationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPeopleProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhotoProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mContext:Landroid/content/Context;

.field private final mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDefaultAccountKnown:Z

.field private final mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

.field private final mMimetypeEmail:J

.field private final mMimetypeIm:J

.field private final mMimetypePostal:J

.field private final mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private final mValues:Landroid/content/ContentValues;

.field private final mValues2:Landroid/content/ContentValues;

.field private final mValues3:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 76
    new-instance v3, Landroid/content/UriMatcher;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    .line 179
    const-string v3, "(CASE WHEN mimetype=\'vnd.android.cursor.item/im\' THEN (CASE WHEN data.data5=-1 THEN \'custom:\'||data.data6 ELSE \'pre:\'||data.data5 END) ELSE data.data1 END)"

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

    .line 188
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "live_folders/contacts"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    .line 191
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "live_folders/contacts_with_phones"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri;

    .line 194
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "live_folders/favorites"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri;

    .line 222
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/organization"

    aput-object v4, v3, v6

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

    .line 226
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/email_v2"

    aput-object v4, v3, v6

    const-string v4, "vnd.android.cursor.item/im"

    aput-object v4, v3, v5

    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    aput-object v4, v3, v7

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

    .line 232
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/phone_v2"

    aput-object v4, v3, v6

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->PHONE_MIME_TYPES:[Ljava/lang/String;

    .line 236
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/photo"

    aput-object v4, v3, v6

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->PHOTO_MIME_TYPES:[Ljava/lang/String;

    .line 240
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/group_membership"

    aput-object v4, v3, v6

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

    .line 244
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/contact_extensions"

    aput-object v4, v3, v6

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->EXTENSION_MIME_TYPES:[Ljava/lang/String;

    .line 287
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    .line 289
    .local v1, "matcher":Landroid/content/UriMatcher;
    const-string v0, "contacts"

    .line 290
    .local v0, "authority":Ljava/lang/String;
    const-string v3, "extensions"

    const/16 v4, 0xe

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
    const-string v3, "extensions/#"

    const/16 v4, 0xf

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 292
    const-string v3, "groups"

    const/16 v4, 0x12

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    const-string v3, "groups/#"

    const/16 v4, 0x13

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    const-string v3, "groups/name/*/members"

    const/16 v4, 0x28

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 297
    const-string v3, "groups/system_id/*/members"

    const/16 v4, 0x29

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 300
    const-string v3, "groupmembership"

    const/16 v4, 0x14

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    const-string v3, "groupmembership/#"

    const/16 v4, 0x15

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    const-string v3, "people"

    invoke-virtual {v1, v0, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 306
    const-string v3, "people/filter/*"

    const/16 v4, 0x1d

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    const-string v3, "people/#"

    invoke-virtual {v1, v0, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    const-string v3, "people/#/extensions"

    const/16 v4, 0x10

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 313
    const-string v3, "people/#/extensions/#"

    const/16 v4, 0x11

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    const-string v3, "people/#/phones"

    const/16 v4, 0xa

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 315
    const-string v3, "people/#/phones/#"

    const/16 v4, 0xb

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    const-string v3, "people/#/photo"

    const/16 v4, 0x18

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    const-string v3, "people/#/contact_methods"

    const/4 v4, 0x6

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    const-string v3, "people/#/contact_methods/#"

    const/4 v4, 0x7

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    const-string v3, "people/#/organizations"

    const/16 v4, 0x2a

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 325
    const-string v3, "people/#/organizations/#"

    const/16 v4, 0x2b

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 326
    const-string v3, "people/#/groupmembership"

    const/16 v4, 0x16

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 327
    const-string v3, "people/#/groupmembership/#"

    const/16 v4, 0x17

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    const-string v3, "people/#/update_contact_time"

    invoke-virtual {v1, v0, v3, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 332
    const-string v3, "deleted_people"

    const/16 v4, 0x1e

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    const-string v3, "deleted_groups"

    const/16 v4, 0x1f

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    const-string v3, "phones"

    const/16 v4, 0xc

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    const-string v3, "phones/filter/*"

    const/16 v4, 0x22

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    const-string v3, "phones/#"

    const/16 v4, 0xd

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    const-string v3, "photos"

    const/16 v4, 0x19

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    const-string v3, "photos/#"

    const/16 v4, 0x1a

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    const-string v3, "contact_methods"

    const/16 v4, 0x8

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 344
    const-string v3, "contact_methods/email"

    const/16 v4, 0x27

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    const-string v3, "contact_methods/#"

    const/16 v4, 0x9

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 349
    const-string v3, "organizations"

    const/4 v4, 0x4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 350
    const-string v3, "organizations/#"

    const/4 v4, 0x5

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    const-string v3, "search_suggest_query"

    invoke-virtual {v1, v0, v3, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 354
    const-string v3, "search_suggest_query/*"

    invoke-virtual {v1, v0, v3, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 356
    const-string v3, "search_suggest_shortcut/*"

    const/16 v4, 0x21

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    const-string v3, "settings"

    const/16 v4, 0x2c

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    const-string v3, "live_folders/people"

    const/16 v4, 0x23

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    const-string v3, "live_folders/people/*"

    const/16 v4, 0x24

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    const-string v3, "live_folders/people_with_phones"

    const/16 v4, 0x25

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    const-string v3, "live_folders/favorites"

    const/16 v4, 0x26

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 369
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 370
    .local v2, "peopleProjectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "name"

    const-string v4, "name"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v3, "display_name"

    const-string v4, "display_name"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v3, "phonetic_name"

    const-string v4, "phonetic_name"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v3, "notes"

    const-string v4, "notes"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v3, "times_contacted"

    const-string v4, "times_contacted"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v3, "last_time_contacted"

    const-string v4, "last_time_contacted"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v3, "custom_ringtone"

    const-string v4, "custom_ringtone"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v3, "send_to_voicemail"

    const-string v4, "send_to_voicemail"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v3, "starred"

    const-string v4, "starred"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v3, "primary_organization"

    const-string v4, "primary_organization"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v3, "primary_email"

    const-string v4, "primary_email"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v3, "primary_phone"

    const-string v4, "primary_phone"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    .line 384
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "number"

    const-string v5, "number"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "type"

    const-string v5, "type"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "label"

    const-string v5, "label"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "number_key"

    const-string v5, "number_key"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "im_protocol"

    const-string v5, "(CASE WHEN protocol=-1 THEN \'custom:\'||custom_protocol ELSE \'pre:\'||protocol END) AS im_protocol"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "im_handle"

    const-string v5, "im_handle"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "im_account"

    const-string v5, "im_account"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "mode"

    const-string v5, "mode"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v4, "status"

    const-string v5, "(SELECT status FROM status_updates JOIN data   ON(status_update_data_id=data._id) WHERE data.raw_contact_id=people._id ORDER BY status_ts DESC  LIMIT 1) AS status"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    .line 404
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "isprimary"

    const-string v5, "isprimary"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "company"

    const-string v5, "company"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "type"

    const-string v5, "type"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "label"

    const-string v5, "label"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v4, "title"

    const-string v5, "title"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    .line 420
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "kind"

    const-string v5, "kind"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "isprimary"

    const-string v5, "isprimary"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "type"

    const-string v5, "type"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "data"

    const-string v5, "data"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "label"

    const-string v5, "label"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v4, "aux_data"

    const-string v5, "aux_data"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    .line 430
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "isprimary"

    const-string v5, "isprimary"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "number"

    const-string v5, "number"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "type"

    const-string v5, "type"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "label"

    const-string v5, "label"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v4, "number_key"

    const-string v5, "number_key"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    .line 446
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v4, "name"

    const-string v5, "name"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v4, "value"

    const-string v5, "value"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    .line 456
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v4, "name"

    const-string v5, "name"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v4, "notes"

    const-string v5, "notes"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v4, "system_id"

    const-string v5, "system_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v3, Ljava/util/HashMap;

    sget-object v4, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    .line 466
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "group_id"

    const-string v5, "group_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "group_sync_id"

    const-string v5, "group_sync_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "group_sync_account"

    const-string v5, "group_sync_account"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v4, "group_sync_account_type"

    const-string v5, "group_sync_account_type"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    .line 483
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "_id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "person"

    const-string v5, "person"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "data"

    const-string v5, "data"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "local_version"

    const-string v5, "local_version"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "download_required"

    const-string v5, "download_required"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "exists_on_server"

    const-string v5, "exists_on_server"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v3, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v4, "sync_error"

    const-string v5, "sync_error"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/GlobalSearchSupport;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactsDatabaseHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "contactsProvider"    # Lcom/android/providers/contacts/ContactsProvider2;
    .param p4, "globalSearchSupport"    # Lcom/android/providers/contacts/GlobalSearchSupport;

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    .line 508
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 509
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    .line 510
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    .line 521
    iput-object p1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    .line 522
    iput-object p3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 523
    iput-object p2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 524
    iput-object p4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    .line 526
    new-instance v0, Lcom/android/providers/contacts/NameSplitter;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const v4, 0x1040049

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 530
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 531
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "SELECT mimetype_id FROM data WHERE _id=?"

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 536
    const-string v0, "SELECT raw_contact_id FROM data WHERE _id=?"

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 541
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeEmail:J

    .line 542
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeIm:J

    .line 543
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypePostal:J

    .line 544
    return-void
.end method

.method private appendGroupAccount(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 1953
    const-string v0, "account_name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1954
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1955
    const-string v0, " AND account_type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1961
    :goto_0
    return-void

    .line 1958
    :cond_0
    const-string v0, "account_name IS NULL AND account_type IS NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendRawContactsAccount(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 1935
    const-string v0, "account_name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1937
    const-string v0, " AND account_type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1943
    :goto_0
    return-void

    .line 1940
    :cond_0
    const-string v0, "account_name IS NULL AND account_type IS NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 2
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;

    .prologue
    .line 1946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1947
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->appendGroupAccount(Ljava/lang/StringBuilder;)V

    .line 1948
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1949
    return-void
.end method

.method private applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 2
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;

    .prologue
    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1929
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->appendRawContactsAccount(Ljava/lang/StringBuilder;)V

    .line 1930
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1931
    return-void
.end method

.method private buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "people._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "people._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE system_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "typeColumn"    # Ljava/lang/String;
    .param p4, "labelColumn"    # Ljava/lang/String;
    .param p5, "auxDataColumn"    # Ljava/lang/String;

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-static {v0, p3, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "label"

    invoke-static {v0, p4, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "aux_data"

    invoke-static {v0, p5, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1480
    return-void
.end method

.method public static createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 554
    const-string v0, "ContactsProviderV1"

    const-string v1, "Bootstrapping database legacy support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->createViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 556
    invoke-static {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 557
    return-void
.end method

.method public static createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 769
    const-string v0, "DROP TABLE IF EXISTS v1_settings;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 770
    const-string v0, "CREATE TABLE v1_settings (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,key STRING NOT NULL,value STRING );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method public static createViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 561
    const-string v0, "name.data1 AS name, raw_contacts.display_name AS display_name, trim(trim(ifnull(name.data7,\' \')||\' \'||ifnull(name.data8,\' \'))||\' \'||ifnull(name.data9,\' \'))  AS phonetic_name , note.data1 AS notes, accounts.account_name, accounts.account_type, raw_contacts.times_contacted AS times_contacted, raw_contacts.last_time_contacted AS last_time_contacted, raw_contacts.custom_ringtone AS custom_ringtone, raw_contacts.send_to_voicemail AS send_to_voicemail, raw_contacts.starred AS starred, organization._id AS primary_organization, email._id AS primary_email, phone._id AS primary_phone, phone.data1 AS number, phone.data2 AS type, phone.data3 AS label, _PHONE_NUMBER_STRIPPED_REVERSED(phone.data1) AS number_key"

    .line 596
    .local v0, "peopleColumns":Ljava/lang/String;
    const-string v1, "DROP VIEW IF EXISTS view_v1_people;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_people AS SELECT raw_contacts._id AS _id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN accounts ON (raw_contacts.account_id=accounts._id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 604
    const-string v1, "DROP VIEW IF EXISTS view_v1_organizations;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 605
    const-string v1, "CREATE VIEW view_v1_organizations AS SELECT data._id AS _id, raw_contact_id AS person, is_primary AS isprimary, accounts.account_name, accounts.account_type, data1 AS company, data2 AS type, data3 AS label, data4 AS title FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN accounts ON (raw_contacts.account_id=accounts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/organization\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 628
    const-string v1, "DROP VIEW IF EXISTS view_v1_contact_methods;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_contact_methods AS SELECT data._id AS _id, data.raw_contact_id AS person, CAST ((CASE WHEN mimetype=\'vnd.android.cursor.item/email_v2\' THEN 1 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/im\' THEN 3 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/postal-address_v2\' THEN 2 ELSE NULL END) END) END) AS INTEGER) AS kind, data.is_primary AS isprimary, data.data2 AS type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data.data14"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aux_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) JOIN accounts ON (raw_contacts.account_id=accounts._id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IS NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 653
    const-string v1, "DROP VIEW IF EXISTS view_v1_phones;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_phones AS SELECT DISTINCT data._id AS _id, data.raw_contact_id AS person, data.is_primary AS isprimary, data.data1 AS number, data.data2 AS type, data.data3 AS label, _PHONE_NUMBER_STRIPPED_REVERSED(data.data1) AS number_key, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phone_lookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ON ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "._id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phone_lookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) JOIN accounts ON (raw_contacts.account_id=accounts._id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mimetypes.mimetype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 680
    const-string v1, "DROP VIEW IF EXISTS view_v1_extensions;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 681
    const-string v1, "CREATE VIEW view_v1_extensions AS SELECT data._id AS _id, data.raw_contact_id AS person, accounts.account_name, accounts.account_type, data1 AS name, data2 AS value FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN accounts ON (raw_contacts.account_id=accounts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/contact_extensions\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 698
    const-string v1, "DROP VIEW IF EXISTS view_v1_groups;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 699
    const-string v1, "CREATE VIEW view_v1_groups AS SELECT groups._id AS _id, accounts.account_name, accounts.account_type, title AS name, notes AS notes , system_id AS system_id FROM groups JOIN accounts ON (groups.account_id=accounts._id);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 711
    const-string v1, "DROP VIEW IF EXISTS view_v1_group_membership;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 712
    const-string v1, "CREATE VIEW view_v1_group_membership AS SELECT data._id AS _id, data.raw_contact_id AS person, accounts.account_name, accounts.account_type, data1 AS group_id, title AS name, notes AS notes, system_id AS system_id, groups.sourceid AS group_sync_id, accounts.account_name AS group_sync_account, accounts.account_type AS group_sync_account_type FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)  JOIN accounts ON (raw_contacts.account_id=accounts._id)LEFT OUTER JOIN packages ON (data.package_id = packages._id) LEFT OUTER JOIN groups   ON (mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\'       AND groups._id = data.data1)  WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 742
    const-string v1, "DROP VIEW IF EXISTS view_v1_photos;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 743
    const-string v1, "CREATE VIEW view_v1_photos AS SELECT data._id AS _id, data.raw_contact_id AS person, accounts.account_name, accounts.account_type, data.data15 AS data, legacy_photo.data4 AS exists_on_server, legacy_photo.data3 AS download_required, legacy_photo.data2 AS local_version, legacy_photo.data5 AS sync_error FROM data JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) JOIN accounts ON (raw_contacts.account_id=accounts._id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary) LEFT OUTER JOIN data legacy_photo ON (raw_contacts._id = legacy_photo.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = legacy_photo.mimetype_id)=\'vnd.android.cursor.item/photo_v1_extras\' AND data._id = legacy_photo.data1) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/photo\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method private ensureDefaultAccount()V
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDefaultAccountKnown:Z

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDefaultAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDefaultAccountKnown:Z

    .line 551
    :cond_0
    return-void
.end method

.method private findFirstDataId(JLjava/lang/String;)J
    .locals 9
    .param p1, "rawContactId"    # J
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1510
    const-wide/16 v7, -0x1

    .line 1511
    .local v7, "dataId":J
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1516
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 1520
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1522
    return-wide v7

    .line 1520
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "rawContactId"    # J
    .param p3, "contentItemType"    # Ljava/lang/String;

    .prologue
    .line 1501
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataId(JLjava/lang/String;)J

    move-result-wide v0

    .line 1502
    .local v0, "dataId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1503
    const/4 v2, 0x0

    .line 1506
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2089
    const/4 v9, 0x0

    .line 2091
    .local v9, "mime":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "kind"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2092
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2094
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 2096
    .local v8, "kind":I
    packed-switch v8, :pswitch_data_0

    .line 2111
    .end local v8    # "kind":I
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2114
    :cond_1
    return-object v9

    .line 2098
    .restart local v8    # "kind":I
    :pswitch_0
    :try_start_1
    const-string v9, "vnd.android.cursor.item/email"

    .line 2099
    goto :goto_0

    .line 2102
    :pswitch_1
    const-string v9, "vnd.android.cursor.item/jabber-im"

    .line 2103
    goto :goto_0

    .line 2106
    :pswitch_2
    const-string v9, "vnd.android.cursor.item/postal-address"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2111
    .end local v8    # "kind":I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2096
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "filterParam"    # Ljava/lang/String;

    .prologue
    .line 2004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2005
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2006
    .local v0, "normalizedName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2008
    const-string v2, "(0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2010
    :cond_0
    const-string v2, "(SELECT raw_contact_id FROM name_lookup WHERE normalized_name GLOB \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    const-string v2, "*\' AND name_type IN (2,3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    const-string v2, ",4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 851
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 852
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 853
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 856
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method private insertContactMethod(JLandroid/content/ContentValues;)J
    .locals 5
    .param p1, "rawContactId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 897
    const-string v2, "kind"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 898
    .local v0, "kind":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 899
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Required value: kind"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 902
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseContactMethodValues(ILandroid/content/ContentValues;)V

    .line 904
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 905
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 906
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    return-wide v2
.end method

.method private insertExtension(JLandroid/content/ContentValues;)J
    .locals 4
    .param p1, "rawContactId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 910
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 912
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 913
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/contact_extensions"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseExtensionValues(Landroid/content/ContentValues;)V

    .line 917
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 918
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertGroup(Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parseGroupValues(Landroid/content/ContentValues;)V

    .line 924
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "account_name"

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "account_type"

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 930
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertGroupMembership(JJ)J
    .locals 4
    .param p1, "rawContactId"    # J
    .param p3, "groupId"    # J

    .prologue
    .line 934
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 936
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 938
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 940
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 941
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertOrganization(Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parseOrganizationValues(Landroid/content/ContentValues;)V

    .line 879
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    const-string v3, "person"

    invoke-static {v1, v2, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 884
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertPeople(Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePeopleValues(Landroid/content/ContentValues;)V

    .line 862
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 863
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 865
    .local v1, "rawContactId":J
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 866
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v4, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 867
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 869
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 870
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v4, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 871
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 874
    :cond_1
    return-wide v1
.end method

.method private insertPhone(JLandroid/content/ContentValues;)J
    .locals 4
    .param p1, "rawContactId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 888
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePhoneValues(Landroid/content/ContentValues;)V

    .line 889
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 891
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 893
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private onChange(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2036
    return-void
.end method

.method private parseContactMethodValues(ILandroid/content/ContentValues;)V
    .locals 7
    .param p1, "kind"    # I
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1436
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1439
    packed-switch p1, :pswitch_data_0

    .line 1469
    :goto_0
    return-void

    .line 1441
    :pswitch_0
    const-string v2, "vnd.android.cursor.item/email_v2"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "data"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 1449
    :pswitch_1
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1450
    .local v6, "protocol":Ljava/lang/String;
    const-string v0, "pre:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data5"

    const/4 v2, 0x4

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1457
    :cond_0
    :goto_1
    const-string v2, "vnd.android.cursor.item/im"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1452
    :cond_1
    const-string v0, "custom:"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data5"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1454
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data6"

    const/4 v2, 0x7

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1462
    .end local v6    # "protocol":Ljava/lang/String;
    :pswitch_2
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "data"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseExtensionValues(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "name"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1496
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "value"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method private parseGroupValues(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1485
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "title"

    const-string v2, "name"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "notes"

    const-string v2, "notes"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "system_id"

    const-string v2, "system_id"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method private parseOrganizationValues(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1396
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "company"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "type"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data3"

    const-string v2, "label"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data4"

    const-string v2, "title"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1412
    return-void
.end method

.method private parsePeopleValues(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1354
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1355
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1356
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1358
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "custom_ringtone"

    const-string v4, "custom_ringtone"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1360
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "send_to_voicemail"

    const-string v4, "send_to_voicemail"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1362
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "last_time_contacted"

    const-string v4, "last_time_contacted"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1364
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "times_contacted"

    const-string v4, "times_contacted"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1366
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "starred"

    const-string v4, "starred"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1368
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 1369
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_name"

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_type"

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    :cond_0
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1374
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data1"

    const-string v4, "name"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1377
    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1378
    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1379
    .local v1, "phoneticName":Ljava/lang/String;
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 1380
    .local v0, "parsedName":Lcom/android/providers/contacts/NameSplitter$Name;
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 1381
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data7"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getGivenNames()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data8"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data9"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    .end local v0    # "parsedName":Lcom/android/providers/contacts/NameSplitter$Name;
    .end local v1    # "phoneticName":Ljava/lang/String;
    :cond_2
    const-string v2, "notes"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1388
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "data1"

    const-string v4, "notes"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1391
    :cond_3
    return-void
.end method

.method private parsePhoneValues(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1417
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "number"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "type"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data3"

    const-string v2, "label"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1431
    return-void
.end method

.method private updateAll(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "match"    # I
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 984
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 985
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 986
    const/4 v8, 0x0

    .line 999
    :goto_0
    return v8

    .line 989
    :cond_0
    const/4 v8, 0x0

    .line 991
    .local v8, "count":I
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 993
    .local v9, "id":J
    invoke-virtual {p0, p2, v9, v10, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->update(IJLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v8, v0

    .line 994
    goto :goto_1

    .line 996
    .end local v9    # "id":J
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateContactMethods(JLandroid/content/ContentValues;)I
    .locals 9
    .param p1, "dataId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 1105
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1108
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1114
    .local v2, "mimetype_id":J
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeEmail:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_1

    .line 1115
    const/4 v1, 0x1

    .line 1126
    .local v1, "kind":I
    :goto_0
    invoke-direct {p0, v1, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseContactMethodValues(ILandroid/content/ContentValues;)V

    .line 1128
    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .end local v1    # "kind":I
    .end local v2    # "mimetype_id":J
    :cond_0
    :goto_1
    return v4

    .line 1109
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_1

    .line 1116
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    .restart local v2    # "mimetype_id":J
    :cond_1
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeIm:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    .line 1117
    const/4 v1, 0x3

    .restart local v1    # "kind":I
    goto :goto_0

    .line 1118
    .end local v1    # "kind":I
    :cond_2
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypePostal:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    .line 1119
    const/4 v1, 0x2

    .restart local v1    # "kind":I
    goto :goto_0
.end method

.method private updateContactTime(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x1

    .line 1147
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1148
    .local v0, "rawContactId":J
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(JLandroid/content/ContentValues;)V

    .line 1149
    return v3
.end method

.method private updateContactTime(JLandroid/content/ContentValues;)V
    .locals 10
    .param p1, "rawContactId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1153
    const-string v6, "last_time_contacted"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1154
    .local v5, "storedTimeContacted":Ljava/lang/Long;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1158
    .local v2, "lastTimeContacted":J
    :goto_0
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v6, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1159
    .local v0, "contactId":J
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1160
    .local v4, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1161
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    .line 1162
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1163
    const-string v6, "UPDATE contacts SET last_time_contacted=? WHERE _id=?"

    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1165
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1166
    const-string v6, "UPDATE contacts SET times_contacted= ifnull(times_contacted,0)+1 WHERE _id=?"

    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1168
    :cond_0
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1169
    const-string v6, "UPDATE raw_contacts SET last_time_contacted=? WHERE _id=?"

    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1171
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1172
    const-string v6, "UPDATE raw_contacts SET times_contacted= ifnull(times_contacted,0)+1  WHERE contact_id=?"

    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    return-void

    .line 1154
    .end local v0    # "contactId":J
    .end local v2    # "lastTimeContacted":J
    .end local v4    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method private updateExtensions(JLandroid/content/ContentValues;)I
    .locals 5
    .param p1, "dataId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1133
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseExtensionValues(Landroid/content/ContentValues;)V

    .line 1135
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateGroups(JLandroid/content/ContentValues;)I
    .locals 5
    .param p1, "groupId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1140
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseGroupValues(Landroid/content/ContentValues;)V

    .line 1142
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateLegacyPhotoData(JJLandroid/content/ContentValues;)V
    .locals 6
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1230
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data2"

    const-string v3, "local_version"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data3"

    const-string v3, "download_required"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1234
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data4"

    const-string v3, "exists_on_server"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1236
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data5"

    const-string v3, "sync_error"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1239
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype=\'vnd.android.cursor.item/photo_v1_extras\' AND raw_contact_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1243
    .local v0, "updated":I
    if-nez v0, :cond_0

    .line 1244
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1245
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo_v1_extras"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1247
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1249
    :cond_0
    return-void
.end method

.method private updateOrganizations(JLandroid/content/ContentValues;)I
    .locals 5
    .param p1, "dataId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1089
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseOrganizationValues(Landroid/content/ContentValues;)V

    .line 1091
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updatePeople(JLandroid/content/ContentValues;)I
    .locals 8
    .param p1, "rawContactId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v7, 0x0

    .line 1051
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePeopleValues(Landroid/content/ContentValues;)V

    .line 1053
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1056
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 1057
    const/4 v0, 0x0

    .line 1085
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return v0

    .line 1060
    .restart local v0    # "count":I
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1061
    const-string v2, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1062
    .local v1, "dataUri":Landroid/net/Uri;
    if-eqz v1, :cond_4

    .line 1063
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3, v7, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1070
    .end local v1    # "dataUri":Landroid/net/Uri;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1071
    const-string v2, "vnd.android.cursor.item/note"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1072
    .restart local v1    # "dataUri":Landroid/net/Uri;
    if-eqz v1, :cond_5

    .line 1073
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3, v7, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1080
    .end local v1    # "dataUri":Landroid/net/Uri;
    :cond_3
    :goto_2
    const-string v2, "last_time_contacted"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "times_contacted"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1082
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(JLandroid/content/ContentValues;)V

    goto :goto_0

    .line 1065
    .restart local v1    # "dataUri":Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1066
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 1075
    :cond_5
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1076
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method private updatePhones(JLandroid/content/ContentValues;)I
    .locals 5
    .param p1, "dataId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1096
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePhoneValues(Landroid/content/ContentValues;)V

    .line 1098
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updatePhoto(JLandroid/content/ContentValues;)I
    .locals 9
    .param p1, "rawContactId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 1181
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataId(JLjava/lang/String;)J

    move-result-wide v3

    .line 1183
    .local v3, "dataId":J
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1184
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 1185
    .local v6, "bytes":[B
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data15"

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1187
    const-wide/16 v0, -0x1

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1190
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1191
    .local v8, "dataUri":Landroid/net/Uri;
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 1192
    const/4 v7, 0x1

    .local v7, "count":I
    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    .line 1198
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateLegacyPhotoData(JJLandroid/content/ContentValues;)V

    .line 1200
    return v7

    .line 1194
    .end local v7    # "count":I
    .end local v8    # "dataUri":Landroid/net/Uri;
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1195
    .restart local v8    # "dataUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v8, v1, v2, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "count":I
    goto :goto_0
.end method

.method private updatePhotoByDataId(JLandroid/content/ContentValues;)I
    .locals 10
    .param p1, "dataId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x1

    .line 1205
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v8, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1209
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1215
    .local v1, "rawContactId":J
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 1217
    .local v6, "bytes":[B
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1218
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "data15"

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1219
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v4, v5, v9}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v6    # "bytes":[B
    :cond_0
    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    .line 1223
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateLegacyPhotoData(JJLandroid/content/ContentValues;)V

    move v0, v8

    .line 1225
    .end local v1    # "rawContactId":J
    :goto_0
    return v0

    .line 1210
    :catch_0
    move-exception v7

    .line 1212
    .local v7, "e":Landroid/database/sqlite/SQLiteDoneException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1292
    const-string v3, "key"

    invoke-virtual {p4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, "key":Ljava/lang/String;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1294
    :cond_0
    const-string v3, "v1_settings"

    const-string v4, "_sync_account IS NULL AND key=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1299
    :goto_0
    const-string v3, "v1_settings"

    const-string v4, "key"

    invoke-virtual {p1, v3, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1301
    .local v1, "rowId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 1302
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error updating settings with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1296
    .end local v1    # "rowId":J
    :cond_1
    const-string v3, "v1_settings"

    const-string v4, "_sync_account=? AND _sync_account_type=? AND key=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v6

    aput-object p3, v5, v7

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1304
    .restart local v1    # "rowId":J
    :cond_2
    return-void
.end method

.method private updateSettings(Landroid/content/ContentValues;)I
    .locals 11
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v10, 0x1

    .line 1252
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1253
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "_sync_account"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "accountName":Ljava/lang/String;
    const-string v7, "_sync_account_type"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1256
    .local v1, "accountType":Ljava/lang/String;
    const-string v7, "key"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1257
    .local v4, "key":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1258
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "you must specify the key when updating settings"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1260
    :cond_0
    invoke-direct {p0, v3, v0, v1, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1261
    const-string v7, "syncEverything"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1262
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1263
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "should_sync"

    const-string v9, "value"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1267
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1269
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v1, v6, v10

    .line 1270
    .local v6, "selectionArgs":[Ljava/lang/String;
    const-string v5, "account_name=? AND account_type=? AND data_set IS NULL"

    .line 1279
    .local v5, "selection":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v8, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9, v5, v6}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1281
    .local v2, "count":I
    if-nez v2, :cond_1

    .line 1282
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "account_name"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "account_type"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v8, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1287
    .end local v2    # "count":I
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    return v10

    .line 1274
    :cond_2
    const/4 v6, 0x0

    .line 1275
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    const-string v5, "account_name IS NULL AND account_type IS NULL AND data_set IS NULL"

    .restart local v5    # "selection":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public copySettingsToLegacySettings()V
    .locals 8

    .prologue
    .line 1333
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1334
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT account_name,account_type,should_sync FROM settings LEFT OUTER JOIN v1_settings ON (account_name=_sync_account AND account_type=_sync_account_type AND data_set IS NULL AND key=\'syncEverything\') WHERE should_sync<>value"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1336
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1337
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1338
    .local v0, "accountName":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1339
    .local v1, "accountType":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1340
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 1341
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_account"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_account_type"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "key"

    const-string v7, "syncEverything"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "value"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, v3, v0, v1, v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1349
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1351
    return-void
.end method

.method public delete(Landroid/net/Uri;IJ)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "match"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 1551
    const/4 v6, 0x0

    .line 1552
    .local v6, "count":I
    packed-switch p2, :pswitch_data_0

    .line 1600
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1555
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v3

    move-wide v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteRawContact(JJZ)I

    move-result v6

    .line 1603
    :goto_0
    return v6

    .line 1559
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1560
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1561
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhoto(JLandroid/content/ContentValues;)I

    goto :goto_0

    .line 1566
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1567
    goto :goto_0

    .line 1571
    :pswitch_4
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1572
    goto :goto_0

    .line 1576
    :pswitch_5
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->PHONE_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1577
    goto :goto_0

    .line 1581
    :pswitch_6
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->EXTENSION_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1582
    goto :goto_0

    .line 1586
    :pswitch_7
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->PHOTO_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1587
    goto :goto_0

    .line 1591
    :pswitch_8
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1592
    goto :goto_0

    .line 1596
    :pswitch_9
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3, p4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteGroup(Landroid/net/Uri;JZ)I

    move-result v6

    .line 1597
    goto :goto_0

    .line 1552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1527
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 1528
    .local v11, "match":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    const/16 v0, 0x2c

    if-ne v11, v0, :cond_1

    .line 1529
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :cond_1
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1533
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 1547
    :goto_0
    return v8

    .line 1537
    :cond_2
    const/4 v8, 0x0

    .line 1539
    .local v8, "count":I
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1540
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1541
    .local v9, "id":J
    invoke-virtual {p0, p1, v11, v9, v10}, Lcom/android/providers/contacts/LegacyApiSupport;->delete(Landroid/net/Uri;IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v8, v0

    .line 1542
    goto :goto_1

    .line 1544
    .end local v9    # "id":J
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2039
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2040
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 2084
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2043
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/contact_extensions"

    .line 2082
    :goto_0
    return-object v1

    .line 2046
    :pswitch_2
    const-string v1, "vnd.android.cursor.item/contact_extensions"

    goto :goto_0

    .line 2048
    :pswitch_3
    const-string v1, "vnd.android.cursor.dir/person"

    goto :goto_0

    .line 2050
    :pswitch_4
    const-string v1, "vnd.android.cursor.item/person"

    goto :goto_0

    .line 2052
    :pswitch_5
    const-string v1, "vnd.android.cursor.dir/phone"

    goto :goto_0

    .line 2054
    :pswitch_6
    const-string v1, "vnd.android.cursor.item/phone"

    goto :goto_0

    .line 2056
    :pswitch_7
    const-string v1, "vnd.android.cursor.dir/contact-methods"

    goto :goto_0

    .line 2058
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2060
    :pswitch_9
    const-string v1, "vnd.android.cursor.dir/phone"

    goto :goto_0

    .line 2062
    :pswitch_a
    const-string v1, "vnd.android.cursor.item/phone"

    goto :goto_0

    .line 2064
    :pswitch_b
    const-string v1, "vnd.android.cursor.dir/phone"

    goto :goto_0

    .line 2066
    :pswitch_c
    const-string v1, "vnd.android.cursor.item/photo"

    goto :goto_0

    .line 2068
    :pswitch_d
    const-string v1, "vnd.android.cursor.dir/photo"

    goto :goto_0

    .line 2070
    :pswitch_e
    const-string v1, "vnd.android.cursor.item/photo"

    goto :goto_0

    .line 2072
    :pswitch_f
    const-string v1, "vnd.android.cursor.dir/contact-methods"

    goto :goto_0

    .line 2074
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2076
    :pswitch_11
    const-string v1, "vnd.android.cursor.dir/organizations"

    goto :goto_0

    .line 2078
    :pswitch_12
    const-string v1, "vnd.android.cursor.item/organization"

    goto :goto_0

    .line 2080
    :pswitch_13
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 2082
    :pswitch_14
    const-string v1, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 2040
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_7
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x1

    .line 780
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 781
    sget-object v8, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 782
    .local v4, "match":I
    const-wide/16 v2, 0x0

    .line 783
    .local v2, "id":J
    packed-switch v4, :pswitch_data_0

    .line 838
    :pswitch_0
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v9, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 785
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPeople(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 841
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_0

    .line 842
    const/4 v7, 0x0

    .line 847
    :goto_1
    return-object v7

    .line 789
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertOrganization(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 790
    goto :goto_0

    .line 793
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 794
    .local v5, "rawContactId":J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertContactMethod(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 795
    goto :goto_0

    .line 799
    .end local v5    # "rawContactId":J
    :pswitch_4
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 800
    .restart local v5    # "rawContactId":J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertContactMethod(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 801
    goto :goto_0

    .line 805
    .end local v5    # "rawContactId":J
    :pswitch_5
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 807
    .restart local v5    # "rawContactId":J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPhone(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 808
    goto :goto_0

    .line 812
    .end local v5    # "rawContactId":J
    :pswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 813
    .restart local v5    # "rawContactId":J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPhone(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 814
    goto :goto_0

    .line 818
    .end local v5    # "rawContactId":J
    :pswitch_7
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 820
    .restart local v5    # "rawContactId":J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertExtension(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 821
    goto :goto_0

    .line 825
    .end local v5    # "rawContactId":J
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertGroup(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 826
    goto :goto_0

    .line 829
    :pswitch_9
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 831
    .restart local v5    # "rawContactId":J
    const-string v8, "group_id"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    .line 833
    .local v0, "groupId":J
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/providers/contacts/LegacyApiSupport;->insertGroupMembership(JJ)J

    move-result-wide v2

    .line 834
    goto :goto_0

    .line 845
    .end local v0    # "groupId":J
    .end local v5    # "rawContactId":J
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 846
    .local v7, "result":Landroid/net/Uri;
    invoke-direct {p0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->onChange(Landroid/net/Uri;)V

    goto :goto_1

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .prologue
    .line 1608
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1611
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1612
    .local v7, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v12, 0x0

    .line 1614
    .local v12, "groupBy":Ljava/lang/String;
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 1615
    .local v19, "match":I
    packed-switch v19, :pswitch_data_0

    .line 1914
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1617
    :pswitch_1
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1618
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1619
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1918
    :cond_0
    :goto_0
    const/4 v13, 0x0

    move-object v8, v3

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1920
    .local v16, "c":Landroid/database/Cursor;
    if-eqz v16, :cond_1

    .line 1921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1924
    .end local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v12    # "groupBy":Ljava/lang/String;
    .end local v16    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v16

    .line 1624
    .restart local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v12    # "groupBy":Ljava/lang/String;
    :pswitch_2
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1625
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1626
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1627
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1628
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1632
    :pswitch_3
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1633
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1634
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1635
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1636
    .local v17, "filterParam":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND _id IN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/LegacyApiSupport;->getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1642
    .end local v17    # "filterParam":Ljava/lang/String;
    :pswitch_4
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1643
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1644
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1645
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1646
    .local v18, "group":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/LegacyApiSupport;->buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1650
    .end local v18    # "group":Ljava/lang/String;
    :pswitch_5
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1651
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1652
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1653
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1654
    .local v20, "systemId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/LegacyApiSupport;->buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1658
    .end local v20    # "systemId":Ljava/lang/String;
    :pswitch_6
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1659
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1660
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1664
    :pswitch_7
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1665
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1666
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1667
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1668
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1672
    :pswitch_8
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1673
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1674
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1675
    const-string v2, " AND person="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1676
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1680
    :pswitch_9
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1681
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1682
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1683
    const-string v2, " AND person="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1684
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1685
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1686
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1690
    :pswitch_a
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1691
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1692
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1696
    :pswitch_b
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1697
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1698
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1699
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1700
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1704
    :pswitch_c
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1705
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1706
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1707
    const-string v2, " AND kind=1"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1712
    :pswitch_d
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1713
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1714
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1715
    const-string v2, " AND person="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1716
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1717
    const-string v2, " AND kind IS NOT NULL"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1721
    :pswitch_e
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1722
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1723
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1724
    const-string v2, " AND person="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1725
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1726
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1727
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1728
    const-string v2, " AND kind IS NOT NULL"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1732
    :pswitch_f
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1733
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1734
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1738
    :pswitch_10
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1739
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1740
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1741
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1742
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1746
    :pswitch_11
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1747
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1748
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1749
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    .line 1750
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    .line 1751
    .restart local v17    # "filterParam":Ljava/lang/String;
    const-string v2, " AND person ="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1753
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_0

    .line 1758
    .end local v17    # "filterParam":Ljava/lang/String;
    :pswitch_12
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1759
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1760
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1761
    const-string v2, " AND person="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1762
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1766
    :pswitch_13
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1767
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1768
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1769
    const-string v2, " AND person="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1770
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1771
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1772
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1776
    :pswitch_14
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1777
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1778
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1782
    :pswitch_15
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1783
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1784
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1785
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1786
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1790
    :pswitch_16
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1791
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1792
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1793
    const-string v2, " AND person="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1794
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1798
    :pswitch_17
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1799
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1800
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1801
    const-string v2, " AND person="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1802
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1803
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1804
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1808
    :pswitch_18
    const-string v2, "view_v1_groups groups"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1809
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1810
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1814
    :pswitch_19
    const-string v2, "view_v1_groups groups"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1815
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1816
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1817
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1818
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1822
    :pswitch_1a
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1823
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1824
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1828
    :pswitch_1b
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1829
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1830
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1831
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1832
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1836
    :pswitch_1c
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1837
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1838
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1839
    const-string v2, " AND person="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1840
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1844
    :pswitch_1d
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1845
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1846
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1847
    const-string v2, " AND person="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1848
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1849
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1850
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1854
    :pswitch_1e
    const-string v2, "view_v1_photos photos"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1855
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1856
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1857
    const-string v2, " AND person="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1858
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1859
    const-string p6, "1"

    .line 1860
    goto/16 :goto_0

    .line 1863
    :pswitch_1f
    const-string v2, "view_v1_photos photos"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1864
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1865
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_0

    .line 1869
    :pswitch_20
    const-string v2, "view_v1_photos photos"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1870
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1871
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1872
    const-string v2, " AND _id="

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1873
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1877
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .end local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object v16

    goto/16 :goto_1

    .line 1881
    .restart local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_22
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 1882
    .local v5, "lookupKey":Ljava/lang/String;
    const-string v2, "filter"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1883
    .local v6, "filter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .end local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object v16

    goto/16 :goto_1

    .line 1888
    .end local v5    # "lookupKey":Ljava/lang/String;
    .end local v6    # "filter":Ljava/lang/String;
    .restart local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .end local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v8, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v12    # "groupBy":Ljava/lang/String;
    move-result-object v16

    goto/16 :goto_1

    .line 1892
    .restart local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v12    # "groupBy":Ljava/lang/String;
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .end local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v8, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri;

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v12    # "groupBy":Ljava/lang/String;
    move-result-object v16

    goto/16 :goto_1

    .line 1896
    .restart local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v12    # "groupBy":Ljava/lang/String;
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .end local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v8, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri;

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v12    # "groupBy":Ljava/lang/String;
    move-result-object v16

    goto/16 :goto_1

    .line 1900
    .restart local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v12    # "groupBy":Ljava/lang/String;
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .end local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v12    # "groupBy":Ljava/lang/String;
    move-result-object v16

    goto/16 :goto_1

    .line 1906
    .restart local v7    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v12    # "groupBy":Ljava/lang/String;
    :pswitch_27
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1909
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/LegacyApiSupport;->copySettingsToLegacySettings()V

    .line 1910
    const-string v2, "v1_settings"

    invoke-virtual {v7, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_b
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_10
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
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_27
        :pswitch_27
        :pswitch_21
        :pswitch_22
        :pswitch_11
        :pswitch_23
        :pswitch_26
        :pswitch_24
        :pswitch_25
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_28
    .end packed-switch
.end method

.method public update(IJLandroid/content/ContentValues;)I
    .locals 1
    .param p1, "match"    # I
    .param p2, "id"    # J
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, "count":I
    packed-switch p1, :pswitch_data_0

    .line 1047
    :goto_0
    :pswitch_0
    return v0

    .line 1007
    :pswitch_1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePeople(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1008
    goto :goto_0

    .line 1013
    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateOrganizations(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1014
    goto :goto_0

    .line 1019
    :pswitch_3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhones(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1020
    goto :goto_0

    .line 1025
    :pswitch_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactMethods(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1026
    goto :goto_0

    .line 1031
    :pswitch_5
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateExtensions(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1032
    goto :goto_0

    .line 1037
    :pswitch_6
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateGroups(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1038
    goto :goto_0

    .line 1043
    :pswitch_7
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhotoByDataId(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 1004
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 947
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 948
    .local v2, "match":I
    const/4 v6, 0x0

    .line 949
    .local v6, "count":I
    sparse-switch v2, :sswitch_data_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 971
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateAll(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 975
    :goto_0
    if-lez v6, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    move v0, v6

    .line 979
    :goto_1
    return v0

    .line 951
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v6

    .line 952
    goto :goto_0

    .line 956
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 957
    .local v7, "rawContactId":J
    invoke-direct {p0, v7, v8, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhoto(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_1

    .line 961
    .end local v7    # "rawContactId":J
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSettings(Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_1

    .line 967
    :sswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x18 -> :sswitch_1
        0x2c -> :sswitch_2
    .end sparse-switch
.end method
