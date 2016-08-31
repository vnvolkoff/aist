<?php
/**
 * @package     SEOTEAM.PRO
 * @subpackage  Templates.almadera
 *
 * @copyright   Copyright (C) 2003 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$app             = JFactory::getApplication();
$doc             = JFactory::getDocument();
$user            = JFactory::getUser();
$this->language  = $doc->language;
$this->direction = $doc->direction;

$this->_scripts = $this->_scripts = array();
//$doc ->_styleSheets = array();

 // print_r($doc);

    $menu = $app->getMenu();
    $isFrontPage = ($menu->getActive() == $menu->getDefault() );
    $tplPath =JURI::base().'templates/'.$this->template.'/';

// Getting params from template
$params = $app->getTemplate(true)->params;

// Add Stylesheets
$doc->addStyleSheet('templates/' . $this->template . '/css/style.css');

// Load optional RTL Bootstrap CSS
JHtml::_('bootstrap.loadCss', false, $this->direction);
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

    <!--icons-->
    <link rel="apple-touch-icon" sizes="57x57" href="images/touch/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="images/touch/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/touch/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="images/touch/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/touch/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="images/touch/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="images/touch/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="images/touch/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="images/touch/apple-touch-icon-180x180.png">
    <link rel="icon" type="image/png" href="images/touch/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="images/touch/favicon-194x194.png" sizes="194x194">
    <link rel="icon" type="image/png" href="images/touch/favicon-96x96.png" sizes="96x96">
    <link rel="icon" type="image/png" href="images/touch/android-chrome-192x192.png" sizes="192x192">
    <link rel="icon" type="image/png" href="images/touch/favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="images/touch/manifest.json">
    <link rel="mask-icon" href="images/touch/safari-pinned-tab.svg" color="#5bbad5">
    <link rel="shortcut icon" href="images/touch/favicon.ico">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="images/touch/mstile-144x144.png">
    <meta name="msapplication-config" content="images/touch/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">

    <meta property="og:site_name" content="АИСТ Инвест. Высокодоходные инвестиции на фондовом рынке."/>
    <meta property="og:url" content="https://www.aistinvest.ru/"/>
    <meta property="og:title" content="АИСТ Инвест. Высокодоходные инвестиции на фондовом рынке."/>
    <meta property="og:description" content="В среднем мы зарабатываем 3-5% в месяц в консервативной стратегии."/>
    <meta property="og:type" content="website"/>
    <meta property="og:image" content="https://www.aistinvest.ru/aistinvestlogosocial.png"/>

    <jdoc:include type="head" />
    
</head>
<body>
<!--BEGIN PAGE HOLDER-->
<div class="page-holder">
    <?php if ($isFrontPage) { ?>
    <!--BEGIN HEADER-->
    <header>
        <div class="inner wide-inner">
            <div class="header-logo">
                <a href="/">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 299.19 61.57">
                                                <path d="M425.52,1567.1a3.78,3.78,0,0,0,.07-0.71,3.74,3.74,0,0,0-3.33-3.72l-0.41,0a3.74,3.74,0,0,0-3.54,4.94h0a26.05,26.05,0,0,1,1.26,8q0,0.41,0,.82c0,0.1,0,.2,0,0.31a3.59,3.59,0,0,1-3.41,3.59v0a26.09,26.09,0,0,0-24.42,21.27,25.72,25.72,0,0,0-.37,3q-0.06.9-.06,1.82,0,0.53,0,1.05c0,0.14,0,.28,0,0.42a0.74,0.74,0,0,0,1.17.33h0a25,25,0,0,1,4-2.75,24.68,24.68,0,0,1,7.61-2.72l-1.74,5.5,0,0.11a0.83,0.83,0,0,0,0,.24,0.86,0.86,0,0,0,.51.75l0.07,0L414,1614l0.22,9.91a0.28,0.28,0,0,0,.56,0l0.15-9.5,6.69,2.79h0l0.09,0a0.24,0.24,0,0,0,.05-0.47l-6.83-3.3,0.22-14.1a26,26,0,0,0,9.18-18.07q0.06-.9.06-1.82a26,26,0,0,0-1.43-8.54l-0.11-.31a0.8,0.8,0,0,1,0-.1,0.77,0.77,0,0,1,.39-0.67l0.14-.06a0.8,0.8,0,0,1,.24,0,0.77,0.77,0,0,1,.46.15l0.12,0.11,8.32,7.6h0a0.28,0.28,0,0,0,.19.07,0.28,0.28,0,0,0,.28-0.28,0.28,0.28,0,0,0-.07-0.19ZM414,1613l-9.85-4.77,1.81-5.73,0.46-.05,1.32-.08,0.85,0q0.88,0,1.74.06l0.34,0,0.14,0h0l0.2-.11c0.42-.23.83-0.48,1.23-0.74l1.12-.76,0.35-.26Z"
                                                      transform="translate(-283.25 -1562.64)"></path>
                                                <path d="M293.28,1580.21l-10,23.73h1.56l3-7h11.7l3.25,7H306L295,1580.21h-1.69Zm-4.85,15.22,4.88-11.42h0.14l5.32,11.42H288.43Z"
                                                      transform="translate(-283.25 -1562.64)"></path>
                                                <polygon
                                                        points="30.95 38.52 30.95 17.57 27.86 17.57 27.86 41.3 30.95 41.3 45.02 20.11 45.02 41.3 48.1 41.3 48.1 17.57 45.02 17.57 30.95 38.52"></polygon>
                                                <path d="M351.65,1602.82a11.29,11.29,0,0,1-4.68-.92,9.88,9.88,0,0,1-3.39-2.44,10.34,10.34,0,0,1-2-3.53,12.52,12.52,0,0,1-.7-4.17,11.69,11.69,0,0,1,.73-4.22,9.7,9.7,0,0,1,2-3.31,9.37,9.37,0,0,1,3.14-2.17,9.83,9.83,0,0,1,3.95-.78,9.94,9.94,0,0,1,2.66.34,9.26,9.26,0,0,1,2.14.88,5.86,5.86,0,0,1,1.53,1.24,4.21,4.21,0,0,1,.83,1.4h2.51a9.59,9.59,0,0,0-1.3-2.14,7.47,7.47,0,0,0-2-1.69,10.35,10.35,0,0,0-2.78-1.12,14.71,14.71,0,0,0-3.63-.41,16.22,16.22,0,0,0-5.37.85,11.86,11.86,0,0,0-4.16,2.43,10.76,10.76,0,0,0-2.68,3.8,12.53,12.53,0,0,0-.95,5,14.39,14.39,0,0,0,.77,4.63,11.21,11.21,0,0,0,2.35,4,11.77,11.77,0,0,0,4.07,2.81,14.81,14.81,0,0,0,5.9,1.06,16.93,16.93,0,0,0,3.88-.41,15.84,15.84,0,0,0,3-1,10.5,10.5,0,0,0,2.12-1.27,10.19,10.19,0,0,0,1.29-1.19l-1-.92A11.56,11.56,0,0,1,351.65,1602.82Z"
                                                      transform="translate(-283.25 -1562.64)"></path>
                                                <polygon
                                                        points="79.32 19.43 88.41 19.43 88.41 41.3 91.49 41.3 91.49 19.43 100.58 19.43 100.58 17.57 79.32 17.57 79.32 19.43"></polygon>
                                                <polygon
                                                        points="158.92 38.52 158.92 17.57 155.83 17.57 155.83 41.3 158.92 41.3 172.99 20.11 172.99 41.3 176.07 41.3 176.07 17.57 172.99 17.57 158.92 38.52"></polygon>
                                                <polygon
                                                        points="201.5 27.94 187.29 27.94 187.29 17.57 184.21 17.57 184.21 41.3 187.29 41.3 187.29 29.5 201.5 29.5 201.5 41.3 204.58 41.3 204.58 17.57 201.5 17.57 201.5 27.94"></polygon>
                                                <path d="M509.79,1592.38a7.76,7.76,0,0,0-2.37-.81,16.82,16.82,0,0,0-2-.24v-0.14a5.52,5.52,0,0,0,2.24-.45,6.87,6.87,0,0,0,1.85-1.19,5.75,5.75,0,0,0,1.27-1.7,4.57,4.57,0,0,0,.47-2.05,5,5,0,0,0-.41-1.93,5.43,5.43,0,0,0-1.23-1.8,6.41,6.41,0,0,0-2.14-1.34,8.18,8.18,0,0,0-3.07-.53H496v23.73h8.51a10.88,10.88,0,0,0,3.83-.59,7.12,7.12,0,0,0,2.51-1.55,5.75,5.75,0,0,0,1.38-2.15,7.4,7.4,0,0,0,.42-2.43,5.2,5.2,0,0,0-.83-3.08A5.83,5.83,0,0,0,509.79,1592.38ZM499,1581.7h4.14a6.05,6.05,0,0,1,2.26.37,4.45,4.45,0,0,1,1.53,1,3.77,3.77,0,0,1,.86,1.39,4.66,4.66,0,0,1,.27,1.56,4.34,4.34,0,0,1-.39,1.83,4.44,4.44,0,0,1-1.08,1.46,5.18,5.18,0,0,1-1.59.95,5.47,5.47,0,0,1-1.92.34H499v-8.88Zm9.78,17.9a4.8,4.8,0,0,1-1.14,1.56,4.72,4.72,0,0,1-1.67,1,6.58,6.58,0,0,1-2.05.32H499v-10.37h3.73a8.55,8.55,0,0,1,2.88.44,5.84,5.84,0,0,1,2,1.19,4.78,4.78,0,0,1,1.19,1.73,5.6,5.6,0,0,1,.39,2.07A5,5,0,0,1,508.83,1599.6Z"
                                                      transform="translate(-283.25 -1562.64)"></path>
                                                <polygon
                                                        points="234.44 41.3 249.77 41.3 249.77 39.43 237.53 39.43 237.53 29.57 248.04 29.57 248.04 27.94 237.53 27.94 237.53 19.43 249.77 19.43 249.77 17.57 234.44 17.57 234.44 41.3"></polygon>
                                                <path d="M550.27,1602.82a11.3,11.3,0,0,1-4.68-.92,9.88,9.88,0,0,1-3.39-2.44,10.34,10.34,0,0,1-2-3.53,12.52,12.52,0,0,1-.7-4.17,11.69,11.69,0,0,1,.73-4.22,9.7,9.7,0,0,1,2-3.31,9.37,9.37,0,0,1,3.14-2.17,9.83,9.83,0,0,1,3.95-.78,9.94,9.94,0,0,1,2.66.34,9.26,9.26,0,0,1,2.14.88,5.86,5.86,0,0,1,1.53,1.24,4.21,4.21,0,0,1,.83,1.4H559a9.58,9.58,0,0,0-1.3-2.14,7.47,7.47,0,0,0-2-1.69,10.36,10.36,0,0,0-2.78-1.12,14.71,14.71,0,0,0-3.63-.41,16.22,16.22,0,0,0-5.37.85,11.86,11.86,0,0,0-4.16,2.43,10.76,10.76,0,0,0-2.68,3.8,12.53,12.53,0,0,0-.95,5,14.39,14.39,0,0,0,.77,4.63,11.21,11.21,0,0,0,2.35,4,11.77,11.77,0,0,0,4.07,2.81,14.81,14.81,0,0,0,5.9,1.06,16.93,16.93,0,0,0,3.88-.41,15.84,15.84,0,0,0,3-1,10.51,10.51,0,0,0,2.12-1.27,10.2,10.2,0,0,0,1.29-1.19l-1-.92A11.56,11.56,0,0,1,550.27,1602.82Z"
                                                      transform="translate(-283.25 -1562.64)"></path>
                                                <polygon
                                                        points="277.94 17.57 277.94 19.43 287.02 19.43 287.02 41.3 290.11 41.3 290.11 19.43 299.19 19.43 299.19 17.57 277.94 17.57"></polygon>
                                            </svg>
                </a>
            </div>
        </div>
    </header>
    <!--end of HEADER-->

    <!--BEGIN MAIN-->
    <main class="main" id="main">

        <div class="page-section">
            <!--hero-->
            <div class="hero view-section">
                <div class="inner">
                    <div class="content-title"><?php echo $params->get('ek1_slogan_1');?></div>
                    <div class="sub-title animate-text"><?php echo $params->get('ek1_slogan_2');?></div>
                </div>
            </div>
            <!-- end of hero-->
        </div>

        <div class="page-section result-page">
            <div class="slide">
                <!--result
                <div class="result view-section">
                    <div class="inner wide-inner">
                        <div class="result-top">
                                <div class="result-left">
                                    <p>Результаты подтверждены аудитором БДО Юникон</p>
                                    <a href="http://www.aistinvest.ru/docs/aist-invest-report20142015q1.pdf" target="_blank">Отчет #1</a> <a href="http://www.aistinvest.ru/docs/aist-invest-report2015q2.pdf" target="_blank">Отчет #2</a>
                                </div>

                            </div>

                            <div class="result-chart hide-on-mobile">
                                <canvas id="canvas"></canvas>

                                <ul class="result-triggers">
                                    <li class="chart-a">За месяц</li>
                                    <li class="chart-b">После 30% комиссии	</li>
                                    <li class="chart-c">В долларах	</li>
                                </ul>
                            </div>

                        <div class="result-table">
                            <?php echo $params->get('ek2_table');?>
                        </div>
                    </div>
                </div>
                end of result-->
				<jdoc:include type="modules" name="graph" />
            </div>


        </div>

        <div class="page-section">
            <!--benefits-->
            <div class="benefits view-section">
                <div class="inner">
                    <div class="content-title short-title"><?php echo $params->get('ek_3_label');?></div>
                    <div class="sub-title animate-text-2"><?php echo $params->get('ek_3_desc');?></div>

                    <div class="benefits-list">
                        <div class="benefits-item">
                            <div class="benefits-item-title"><?php echo $params->get('ek_3_advantages_1_label');?></div>
                            <p><?php echo $params->get('ek_3_advantages_1_desc');?></p>
                            <div class="icon-print"></div>
                        </div>
                        <div class="benefits-item">
                            <div class="benefits-item-title"><?php echo $params->get('ek_3_advantages_2_label');?></div>
                            <p><?php echo $params->get('ek_3_advantages_2_desc');?></p>
                            <div class="icon-wave"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end of benefits-->
        </div>

        <div class="page-section">
            <!--about-->
            <div class="about view-section">
                <div class="inner">
                    <div class="content-title short-title"><?php echo $params->get('ek_4_label');?></div>
                    <?php echo $params->get('ek_4_text');?>
                    <?php if($params->get('ek_4_btn_on')){ ?><a href="/index.php?option=com_content&view=article&id=1&Itemid=<?php echo $params->get('ek_4_btn_url');?>" class="faq-button"><?php echo $params->get('ek_4_btn_label');?></a><?php }?>
                </div>
            </div>
            <!-- end of about-->
        </div>

        <div class="page-section">
            <!--contacts-->
            <div class="contacts view-section">
                <div class="inner">
                    <div class="content-title short-title"><?php echo $params->get('ek_5_label');?></div>

                    <div class="contacts-right">
                        <div class="phone-box">
                            <!--<p>Остались вопросы? Звоните!</p>-->
                            <a href="tel:<?php echo $params->get('ek_5_phone');?>" class="call-to"><?php echo $params->get('ek_5_phone');?></a>
                        </div>
                        <address class="address-box modal-trigger" data-target="map-modal">
                            <?php echo $params->get('ek_5_address');?>
                        </address>
                    </div>

                    <div class="sub-title">
                        <?php echo $params->get('ek_5_text');?>
                    </div>

                    <div class="subscribe-form">
                        <form id="mc-embedded-subscribe-form" action="//aistinvest.us11.list-manage.com/subscribe/post?u=e4225450961f262e21d766f36&amp;id=9f99a3bd26" method="post" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                            <p><strong>Хотите подумать?</strong></p>
                            <label for="email">Подпишитесь на ежемесячную рассылку отчетов и новостей.</label>

                                <!--<label class="check-label">
                                    <input class="check" type="checkbox"/>
                                    <span class="label-text">Согласен на обработку персональных данных</span>
                                </label>-->
                            <div class="input-line">
                                <input class="text-input" id="mce-EMAIL" name="EMAIL" type="email" placeholder="Введите ваш емейл" value=""/>
                            </div>
                            <button class="submit-button2" type="submit" id="mc-embedded-subscribe">ПОДПИСАТЬСЯ</button>
                        </form>
                    </div>

                    <div class="copyright">
                        <a href="#" class="modal-trigger" data-target="info-modal">
                            <span>Правовая информация</span>
                        </a>
                    </div>
                </div>
            </div>
            <!-- end of contacts-->
        </div>
    </main>
    <!--end of MAIN-->

    <div class="page-bg_" tabindex="-1"></div>
    <?php } else { ?>

        <!--faq-->
        <div class="faq">
            <div class="inner">
                <!--BEGIN HEADER-->
                <div class="inner-header">
                    <div class="faq-frame">
                        <div class="header-logo dark-logo">
                            <a href="index.html">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 299.19 61.57">
                                                                    <path d="M425.52,1567.1a3.78,3.78,0,0,0,.07-0.71,3.74,3.74,0,0,0-3.33-3.72l-0.41,0a3.74,3.74,0,0,0-3.54,4.94h0a26.05,26.05,0,0,1,1.26,8q0,0.41,0,.82c0,0.1,0,.2,0,0.31a3.59,3.59,0,0,1-3.41,3.59v0a26.09,26.09,0,0,0-24.42,21.27,25.72,25.72,0,0,0-.37,3q-0.06.9-.06,1.82,0,0.53,0,1.05c0,0.14,0,.28,0,0.42a0.74,0.74,0,0,0,1.17.33h0a25,25,0,0,1,4-2.75,24.68,24.68,0,0,1,7.61-2.72l-1.74,5.5,0,0.11a0.83,0.83,0,0,0,0,.24,0.86,0.86,0,0,0,.51.75l0.07,0L414,1614l0.22,9.91a0.28,0.28,0,0,0,.56,0l0.15-9.5,6.69,2.79h0l0.09,0a0.24,0.24,0,0,0,.05-0.47l-6.83-3.3,0.22-14.1a26,26,0,0,0,9.18-18.07q0.06-.9.06-1.82a26,26,0,0,0-1.43-8.54l-0.11-.31a0.8,0.8,0,0,1,0-.1,0.77,0.77,0,0,1,.39-0.67l0.14-.06a0.8,0.8,0,0,1,.24,0,0.77,0.77,0,0,1,.46.15l0.12,0.11,8.32,7.6h0a0.28,0.28,0,0,0,.19.07,0.28,0.28,0,0,0,.28-0.28,0.28,0.28,0,0,0-.07-0.19ZM414,1613l-9.85-4.77,1.81-5.73,0.46-.05,1.32-.08,0.85,0q0.88,0,1.74.06l0.34,0,0.14,0h0l0.2-.11c0.42-.23.83-0.48,1.23-0.74l1.12-.76,0.35-.26Z"
                                                                          transform="translate(-283.25 -1562.64)"></path>
                                                                    <path d="M293.28,1580.21l-10,23.73h1.56l3-7h11.7l3.25,7H306L295,1580.21h-1.69Zm-4.85,15.22,4.88-11.42h0.14l5.32,11.42H288.43Z"
                                                                          transform="translate(-283.25 -1562.64)"></path>
                                                                    <polygon
                                                                            points="30.95 38.52 30.95 17.57 27.86 17.57 27.86 41.3 30.95 41.3 45.02 20.11 45.02 41.3 48.1 41.3 48.1 17.57 45.02 17.57 30.95 38.52"></polygon>
                                                                    <path d="M351.65,1602.82a11.29,11.29,0,0,1-4.68-.92,9.88,9.88,0,0,1-3.39-2.44,10.34,10.34,0,0,1-2-3.53,12.52,12.52,0,0,1-.7-4.17,11.69,11.69,0,0,1,.73-4.22,9.7,9.7,0,0,1,2-3.31,9.37,9.37,0,0,1,3.14-2.17,9.83,9.83,0,0,1,3.95-.78,9.94,9.94,0,0,1,2.66.34,9.26,9.26,0,0,1,2.14.88,5.86,5.86,0,0,1,1.53,1.24,4.21,4.21,0,0,1,.83,1.4h2.51a9.59,9.59,0,0,0-1.3-2.14,7.47,7.47,0,0,0-2-1.69,10.35,10.35,0,0,0-2.78-1.12,14.71,14.71,0,0,0-3.63-.41,16.22,16.22,0,0,0-5.37.85,11.86,11.86,0,0,0-4.16,2.43,10.76,10.76,0,0,0-2.68,3.8,12.53,12.53,0,0,0-.95,5,14.39,14.39,0,0,0,.77,4.63,11.21,11.21,0,0,0,2.35,4,11.77,11.77,0,0,0,4.07,2.81,14.81,14.81,0,0,0,5.9,1.06,16.93,16.93,0,0,0,3.88-.41,15.84,15.84,0,0,0,3-1,10.5,10.5,0,0,0,2.12-1.27,10.19,10.19,0,0,0,1.29-1.19l-1-.92A11.56,11.56,0,0,1,351.65,1602.82Z"
                                                                          transform="translate(-283.25 -1562.64)"></path>
                                                                    <polygon
                                                                            points="79.32 19.43 88.41 19.43 88.41 41.3 91.49 41.3 91.49 19.43 100.58 19.43 100.58 17.57 79.32 17.57 79.32 19.43"></polygon>
                                                                    <polygon
                                                                            points="158.92 38.52 158.92 17.57 155.83 17.57 155.83 41.3 158.92 41.3 172.99 20.11 172.99 41.3 176.07 41.3 176.07 17.57 172.99 17.57 158.92 38.52"></polygon>
                                                                    <polygon
                                                                            points="201.5 27.94 187.29 27.94 187.29 17.57 184.21 17.57 184.21 41.3 187.29 41.3 187.29 29.5 201.5 29.5 201.5 41.3 204.58 41.3 204.58 17.57 201.5 17.57 201.5 27.94"></polygon>
                                                                    <path d="M509.79,1592.38a7.76,7.76,0,0,0-2.37-.81,16.82,16.82,0,0,0-2-.24v-0.14a5.52,5.52,0,0,0,2.24-.45,6.87,6.87,0,0,0,1.85-1.19,5.75,5.75,0,0,0,1.27-1.7,4.57,4.57,0,0,0,.47-2.05,5,5,0,0,0-.41-1.93,5.43,5.43,0,0,0-1.23-1.8,6.41,6.41,0,0,0-2.14-1.34,8.18,8.18,0,0,0-3.07-.53H496v23.73h8.51a10.88,10.88,0,0,0,3.83-.59,7.12,7.12,0,0,0,2.51-1.55,5.75,5.75,0,0,0,1.38-2.15,7.4,7.4,0,0,0,.42-2.43,5.2,5.2,0,0,0-.83-3.08A5.83,5.83,0,0,0,509.79,1592.38ZM499,1581.7h4.14a6.05,6.05,0,0,1,2.26.37,4.45,4.45,0,0,1,1.53,1,3.77,3.77,0,0,1,.86,1.39,4.66,4.66,0,0,1,.27,1.56,4.34,4.34,0,0,1-.39,1.83,4.44,4.44,0,0,1-1.08,1.46,5.18,5.18,0,0,1-1.59.95,5.47,5.47,0,0,1-1.92.34H499v-8.88Zm9.78,17.9a4.8,4.8,0,0,1-1.14,1.56,4.72,4.72,0,0,1-1.67,1,6.58,6.58,0,0,1-2.05.32H499v-10.37h3.73a8.55,8.55,0,0,1,2.88.44,5.84,5.84,0,0,1,2,1.19,4.78,4.78,0,0,1,1.19,1.73,5.6,5.6,0,0,1,.39,2.07A5,5,0,0,1,508.83,1599.6Z"
                                                                          transform="translate(-283.25 -1562.64)"></path>
                                                                    <polygon
                                                                            points="234.44 41.3 249.77 41.3 249.77 39.43 237.53 39.43 237.53 29.57 248.04 29.57 248.04 27.94 237.53 27.94 237.53 19.43 249.77 19.43 249.77 17.57 234.44 17.57 234.44 41.3"></polygon>
                                                                    <path d="M550.27,1602.82a11.3,11.3,0,0,1-4.68-.92,9.88,9.88,0,0,1-3.39-2.44,10.34,10.34,0,0,1-2-3.53,12.52,12.52,0,0,1-.7-4.17,11.69,11.69,0,0,1,.73-4.22,9.7,9.7,0,0,1,2-3.31,9.37,9.37,0,0,1,3.14-2.17,9.83,9.83,0,0,1,3.95-.78,9.94,9.94,0,0,1,2.66.34,9.26,9.26,0,0,1,2.14.88,5.86,5.86,0,0,1,1.53,1.24,4.21,4.21,0,0,1,.83,1.4H559a9.58,9.58,0,0,0-1.3-2.14,7.47,7.47,0,0,0-2-1.69,10.36,10.36,0,0,0-2.78-1.12,14.71,14.71,0,0,0-3.63-.41,16.22,16.22,0,0,0-5.37.85,11.86,11.86,0,0,0-4.16,2.43,10.76,10.76,0,0,0-2.68,3.8,12.53,12.53,0,0,0-.95,5,14.39,14.39,0,0,0,.77,4.63,11.21,11.21,0,0,0,2.35,4,11.77,11.77,0,0,0,4.07,2.81,14.81,14.81,0,0,0,5.9,1.06,16.93,16.93,0,0,0,3.88-.41,15.84,15.84,0,0,0,3-1,10.51,10.51,0,0,0,2.12-1.27,10.2,10.2,0,0,0,1.29-1.19l-1-.92A11.56,11.56,0,0,1,550.27,1602.82Z"
                                                                          transform="translate(-283.25 -1562.64)"></path>
                                                                    <polygon
                                                                            points="277.94 17.57 277.94 19.43 287.02 19.43 287.02 41.3 290.11 41.3 290.11 19.43 299.19 19.43 299.19 17.57 277.94 17.57"></polygon>
                                                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
                <!--end of HEADER-->

                <div class="faq-scroll">
                    <div class="faq-frame">


                        <jdoc:include type="component" />

<div class="subscribe-form">
                            <form id="mc-embedded-subscribe-form" action="//aistinvest.us11.list-manage.com/subscribe/post?u=e4225450961f262e21d766f36&amp;id=9f99a3bd26" method="post" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                                <label for="email">Подпишитесь на ежемесячную рассылку отчетов и новостей</label>

                                <!--<label class="check-label dark">
                                    <input class="check" type="checkbox"/>
                                    <span class="label-text">Согласен на обработку персональных данных</span>
                                </label>-->

                                <div class="input-line">
                                    <input class="text-input" id="mce-EMAIL" name="EMAIL" type="email" placeholder="Введите ваш емейл"/>
                                </div>
                                <button class="submit-button" type="submit" id="mc-embedded-subscribe">ПОДПИСАТЬСЯ</button>
                            </form>
                        </div>
                    </div>
                </div>

                <a class="close-small" href="/" onclick="history.back();return false;"></a>
            </div>

            <a href="/" onclick="history.back();return false;"></a>
        </div>
        <!-- end of faq-->

        <!--BEGIN MAIN-->
        <main class="main" id="main">

        </main>
        <!--end of MAIN-->


    <?php } ?>
</div>
<!-- end of PAGE HOLDER-->

<!--modals-->
<div id="modal-holder" class="modal-holder"></div>
<!-- end of modals-->

<!--JS-->
<script src="<?php echo $tplPath; ?>js/jquery-1.12.0.js"></script>
<script src="<?php echo $tplPath; ?>js/jquery.validate.js"></script>
<?php if ($isFrontPage) {?><script src="<?php echo $tplPath; ?>js/main-page.js"></script><?php }?>
<script src="<?php echo $tplPath; ?>js/highcharts/highcharts.js"></script>
<script src="<?php echo $tplPath; ?>js/scripts.js"></script>
<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU"></script>

<jdoc:include type="modules" name="script" />

<!-- Yandex.Metrika counter -->
<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter30261502 = new Ya.Metrika({id:30261502,
                    webvisor:true,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    trackHash:true});
        } catch(e) { }
    });

    var n = d.getElementsByTagName("script")[0],
        s = d.createElement("script"),
        f = function () { n.parentNode.insertBefore(s, n); };
    s.type = "text/javascript";
    s.async = true;
    s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

    if (w.opera == "[object Opera]") {
        d.addEventListener("DOMContentLoaded", f, false);
    } else { f(); }
})(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="//mc.yandex.ru/watch/30261502" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

</body>
</html>