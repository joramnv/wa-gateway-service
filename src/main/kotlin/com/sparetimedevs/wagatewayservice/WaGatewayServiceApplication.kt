package com.sparetimedevs.wagatewayservice

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.cloud.client.discovery.EnableDiscoveryClient
import org.springframework.cloud.netflix.zuul.EnableZuulProxy
import org.springframework.context.annotation.ComponentScan

@SpringBootApplication
@EnableZuulProxy
@EnableDiscoveryClient
@ComponentScan(basePackages = ["com.sparetimedevs.wagatewayservice"])
class WaGatewayServiceApplication

fun main(args: Array<String>) {
    runApplication<WaGatewayServiceApplication>(*args)
}
